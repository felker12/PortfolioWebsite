<%@ Page Title="About Me" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PortfolioWebsite.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="mb-4">About Me</h2>
        
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <asp:Image ID="ProfileImage" runat="server" CssClass="card-img-top" ImageUrl="~/Content/Images/profile-placeholder.jpg" AlternateText="Profile Picture" />
                    <div class="card-body">
                        <h3 class="card-title">Kevin Felker</h3>
                        <p class="card-text">IT Professional & Software Developer</p>
                    </div>
                </div>
            </div>
            
            <div class="col-md-8">
                <h3>Professional Summary</h3>
                <div class="card mb-3">
                    <div class="card-body">
                        <p class="card-text">
                            Technically skilled and highly motivated IT professional with a strong foundation in software development. 
                            Looking to leverage a blend of leadership and technical experience in a developer role. 
                            Bringing a decade of experience in operational leadership. Demonstrates a proactive approach to problem-solving, 
                            excellent attention to detail, and the ability to adapt quickly in fast-paced environments.
                        </p>
                    </div>
                </div>
                
                <h3 class="mt-4">Education</h3>
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Bachelor of Science in Computer Information Systems</h5>
                        <h6 class="card-subtitle mb-2 text-muted">DeVry University, Federal Way, WA</h6>
                        <p class="card-text">GPA: 3.76</p>
                    </div>
                </div>
                
                <h3 class="mt-4">Professional Experience</h3>
                <div class="card mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Operations Technology Specialist (6y)/ Shift Manager (7y)</h5>
                        <h6 class="card-subtitle mb-2 text-muted">McDonald's, Brazil, IN</h6>
                        <p class="card-text">2015 - Present</p>
                        <ul>
                            <li>Provided on-site technical support by maintaining, installing, and repairing operations technology systems, resulting in increased uptime of operations</li>
                            <li>Diagnosed and resolved hardware and software issues in coordination with offsite IT teams to minimize downtime</li>
                            <li>Streamlined shift operations and trained five new managers in leadership, operational protocols, and systems use</li>
                            <li>Received multiple awards for excellence in performance, customer service, and leadership</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 