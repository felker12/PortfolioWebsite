<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PortfolioWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/jquery-3.7.1.min.js" />
        </Scripts>
    </asp:ScriptManager>
    
    <div class="container">
        <h2 class="mb-3">Contact Me</h2>
        
        <div class="row g-3">
            <div class="col-md-6">
                <div class="card h-100">
                    <div class="card-body p-3">
                        <h3 class="mb-2">Get in Touch</h3>
                        <p class="mb-3">Feel free to reach out to me using the contact form or through any of the following channels:</p>
                        
                        <div class="contact-info">
                            <div class="mb-2">
                                <i class="fas fa-envelope"></i>
                                <asp:HyperLink ID="EmailLink" runat="server" NavigateUrl="mailto:kanthonyfelker@gmail.com">kanthonyfelker@gmail.com</asp:HyperLink>
                            </div>
                            <div class="mb-2">
                                <i class="fab fa-github"></i>
                                <asp:HyperLink ID="GithubLink" runat="server" NavigateUrl="https://github.com/felker12" Target="_blank">GitHub Profile</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="card h-100">
                    <div class="card-body p-3">
                        <h3 class="mb-2">Contact Form</h3>
                        <div class="contact-form">
                            <div class="mb-2">
                                <asp:Label ID="NameLabel" runat="server" AssociatedControlID="NameTextBox">Name:</asp:Label>
                                <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
                                    ControlToValidate="NameTextBox"
                                    ErrorMessage="Name is required"
                                    CssClass="text-danger"
                                    EnableClientScript="true"
                                    Display="Dynamic"
                                    ValidationGroup="ContactForm"
                                    EnableTheming="false">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-2">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="EmailTextBox">Email:</asp:Label>
                                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" TextMode="Email" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" 
                                    ControlToValidate="EmailTextBox"
                                    ErrorMessage="Email is required"
                                    CssClass="text-danger"
                                    EnableClientScript="true"
                                    Display="Dynamic"
                                    ValidationGroup="ContactForm"
                                    EnableTheming="false">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="EmailFormatValidator" runat="server"
                                    ControlToValidate="EmailTextBox"
                                    ErrorMessage="Invalid email format"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    CssClass="text-danger"
                                    EnableClientScript="true"
                                    Display="Dynamic"
                                    ValidationGroup="ContactForm"
                                    EnableTheming="false">
                                </asp:RegularExpressionValidator>
                            </div>

                            <div class="mb-2">
                                <asp:Label ID="SubjectLabel" runat="server" AssociatedControlID="SubjectTextBox">Subject:</asp:Label>
                                <asp:TextBox ID="SubjectTextBox" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="SubjectValidator" runat="server" 
                                    ControlToValidate="SubjectTextBox"
                                    ErrorMessage="Subject is required"
                                    CssClass="text-danger"
                                    EnableClientScript="true"
                                    Display="Dynamic"
                                    ValidationGroup="ContactForm"
                                    EnableTheming="false">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-2">
                                <asp:Label ID="MessageLabel" runat="server" AssociatedControlID="MessageTextBox">Message:</asp:Label>
                                <asp:TextBox ID="MessageTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" required="required"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="MessageValidator" runat="server" 
                                    ControlToValidate="MessageTextBox"
                                    ErrorMessage="Message is required"
                                    CssClass="text-danger"
                                    EnableClientScript="true"
                                    Display="Dynamic"
                                    ValidationGroup="ContactForm"
                                    EnableTheming="false">
                                </asp:RequiredFieldValidator>
                            </div>

                            <div class="mt-3">
                                <asp:Button ID="SubmitButton" runat="server" Text="Send Message" CssClass="btn btn-primary w-100" OnClick="SubmitButton_Click" ValidationGroup="ContactForm" />
                            </div>
                            
                            <div class="mt-3">
                                <asp:Label ID="SuccessMessage" runat="server" CssClass="alert alert-success d-block mt-2" Visible="false">
                                    Your message has been sent successfully!
                                </asp:Label>
                                
                                <asp:Label ID="ErrorMessage" runat="server" CssClass="alert alert-danger d-block mt-2" Visible="false">
                                    There was an error sending your message. Please try again later.
                                </asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 