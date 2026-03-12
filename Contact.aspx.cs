using System;
using System.Net.Mail;
using System.Net;
using System.Configuration;

namespace PortfolioWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Disable unobtrusive validation
                this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Hide any previously shown messages
            SuccessMessage.Visible = false;
            ErrorMessage.Visible = false;

            if (Page.IsValid)
            {
                try
                {
                    // Create the email message
                    using (MailMessage mail = new MailMessage())
                    {
                        mail.From = new MailAddress(ConfigurationManager.AppSettings["SmtpFromEmail"]);
                        mail.To.Add(ConfigurationManager.AppSettings["ContactFormEmail"]);
                        mail.Subject = $"Portfolio Contact Form: {SubjectTextBox.Text}";
                        mail.Body = $@"Name: {NameTextBox.Text}
                            Email: {EmailTextBox.Text}
                            Subject: {SubjectTextBox.Text}

                            Message:
                            {MessageTextBox.Text}";

                        // Configure and send the email
                        using (SmtpClient smtp = new SmtpClient())
                        {
                            smtp.Host = ConfigurationManager.AppSettings["SmtpServer"];
                            smtp.Port = int.Parse(ConfigurationManager.AppSettings["SmtpPort"]);
                            smtp.EnableSsl = bool.Parse(ConfigurationManager.AppSettings["SmtpEnableSsl"]);
                            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                            smtp.UseDefaultCredentials = false;
                            smtp.Credentials = new NetworkCredential(
                                ConfigurationManager.AppSettings["SmtpUsername"],
                                ConfigurationManager.AppSettings["SmtpPassword"]
                            );
                            smtp.Timeout = 20000; // 20 seconds timeout

                            smtp.Send(mail);
                        }
                    }

                    // Clear the form
                    NameTextBox.Text = string.Empty;
                    EmailTextBox.Text = string.Empty;
                    SubjectTextBox.Text = string.Empty;
                    MessageTextBox.Text = string.Empty;

                    // Show success message
                    SuccessMessage.Visible = true;
                }
                catch (Exception ex)
                {
                    // Log the error (implement proper logging in production)
                    System.Diagnostics.Debug.WriteLine($"Error sending email: {ex.Message}");

                    // Set a more descriptive error message
                    ErrorMessage.Text = $"There was an error sending your message: {ex.Message}";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }
} 