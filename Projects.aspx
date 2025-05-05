<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="PortfolioWebsite.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="mb-3">My Projects</h2>
        
        <div class="row g-3">
            <!-- RPG Game Development -->
            <div class="col-md-6">
                <div class="card project-card h-100">
                    <asp:Image ID="Project2Image" runat="server" CssClass="card-img-top" ImageUrl="~/Content/GameSample.png" AlternateText="RPG Game Development" />
                    <div class="card-body p-3">
                        <h5 class="card-title mb-2">RPG Game Development</h5>
                        <p class="card-text mb-2">Building a custom RPG using C# and the MonoGame framework. Utilizing Git for version control and collaborative development.</p>
                        <div class="tech-stack mb-2">
                            <span class="badge bg-primary">C#</span>
                            <span class="badge bg-secondary">MonoGame</span>
                            <span class="badge bg-success">Git</span>
                        </div>
                        <div>
                            <asp:HyperLink ID="Project2Github" runat="server" CssClass="btn btn-secondary btn-sm" NavigateUrl="https://github.com/felker12/skeletons-adventure" Text="GitHub" Target="_blank" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Time Punch Application -->
            <div class="col-md-6">
                <div class="card project-card h-100">
                    <asp:Image ID="Project3Image" runat="server" CssClass="card-img-top" ImageUrl="~/Content/TimeClock_LogIn.png" AlternateText="Time Punch Application" />
                    <div class="card-body p-3">
                        <h5 class="card-title mb-2">Time Punch Application</h5>
                        <p class="card-text mb-2">Created a clock-in/out tracking tool with a user-friendly UI and secure database integration.</p>
                        <div class="tech-stack mb-2">
                            <span class="badge bg-primary">C#</span>
                            <span class="badge bg-secondary">MSSQL</span>
                            <span class="badge bg-success">UI/UX</span>
                        </div>
                        <div>
                            <asp:HyperLink ID="Project3Github" runat="server" CssClass="btn btn-secondary btn-sm" NavigateUrl="https://github.com/felker12/TimePunch" Text="GitHub" Target="_blank" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Web Application Development -->
            <div class="col-md-6">
                <div class="card project-card h-100">
                    <div class="card-body p-3">
                        <h5 class="card-title mb-2">Web Application Development</h5>
                        <p class="card-text mb-2">Senior Capstone Project: Developed and deployed a full-stack web application for a small business. Collaborated on requirements gathering, database design, and front-end development.</p>
                        <div class="tech-stack">
                            <span class="badge bg-primary">C#</span>
                            <span class="badge bg-secondary">ASP.NET</span>
                            <span class="badge bg-success">MSSQL</span>
                            <span class="badge bg-info">Azure</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 