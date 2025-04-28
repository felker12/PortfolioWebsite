<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioWebsite.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 class="display-4">Kevin "Anthony" Felker</h1>
                <p class="lead">Full-Stack Developer | Problem Solver | Tech Enthusiast</p>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">About Me</h5>
                        <p class="card-text">I'm a passionate developer with expertise in web development, software engineering, and problem-solving.</p>
                        <asp:HyperLink ID="AboutLink" runat="server" NavigateUrl="~/About.aspx" CssClass="btn btn-primary">Learn More</asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Projects</h5>
                        <p class="card-text">Check out my latest projects and see how I can help you achieve their goals.</p>
                        <asp:HyperLink ID="ProjectsLink" runat="server" NavigateUrl="~/Projects.aspx" CssClass="btn btn-primary">View Projects</asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Contact</h5>
                        <p class="card-text">Let's connect! I'm always open to discussing new projects and opportunities.</p>
                        <asp:HyperLink ID="ContactLink" runat="server" NavigateUrl="~/Contact.aspx" CssClass="btn btn-primary">Get in Touch</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 