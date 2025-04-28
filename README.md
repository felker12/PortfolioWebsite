# Portfolio Website - ASP.NET WebForms

A professional portfolio website built using ASP.NET WebForms, featuring a responsive design with Bootstrap and a contact form.

## Features

- Responsive design using Bootstrap 5
- Home page with featured work section
- About page with professional information
- Projects showcase page
- Skills page with progress bars and categorized skills
- Contact form with email functionality
- Modern and clean UI

## Prerequisites

- Visual Studio 2019 or later
- .NET Framework 4.8
- IIS Express (comes with Visual Studio)

## Setup Instructions

1. Clone the repository
2. Open the solution in Visual Studio
3. Restore NuGet packages
4. Configure SMTP settings in Web.config:
   - Update the following values in the `appSettings` section:
     ```xml
     <add key="SmtpServer" value="your-smtp-server" />
     <add key="SmtpPort" value="your-smtp-port" />
     <add key="SmtpEnableSsl" value="true-or-false" />
     <add key="SmtpUsername" value="your-email" />
     <add key="SmtpPassword" value="your-password" />
     <add key="SmtpFromEmail" value="your-email" />
     <add key="ContactFormEmail" value="your-email" />
     ```
5. Customize the content:
   - Update profile information in About.aspx
   - Add your projects in Projects.aspx
   - Update skills and percentages in Skills.aspx
   - Modify contact information in Contact.aspx

## Deployment

1. Build the solution in Release mode
2. Publish to your hosting provider:
   - Right-click on the project in Solution Explorer
   - Select "Publish"
   - Follow the wizard to configure your deployment settings
   - Choose your deployment method (FTP, Web Deploy, etc.)

## Customization

- Update the images in the Content/Images folder
- Modify the Site.css file for custom styling
- Update the Site.Master file to change the layout structure

## Security Notes

- Never commit sensitive information (like SMTP credentials) to version control
- Use Web.config transformations for different environments
- Consider using secure connection strings and encryption for sensitive data

## License

This project is licensed under the MIT License - see the LICENSE file for details

## Contact

Your Name - your.email@example.com

Project Link: [https://github.com/yourusername/portfolio-website](https://github.com/yourusername/portfolio-website) 