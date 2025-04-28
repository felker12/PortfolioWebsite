<%@ Page Title="Skills" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="PortfolioWebsite.Skills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="mb-4">Technical Skills</h2>

        <!-- Programming Languages -->
        <div class="card mb-4">
            <div class="card-header">
                <h3 class="mb-0">Programming Languages</h3>
            </div>
            <div class="card-body">
                <div class="skill-item">
                    <label>C#</label>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">90%</div>
                    </div>
                </div>
                <div class="skill-item">
                    <label>Java</label>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">70%</div>
                    </div>
                </div>
                <div class="skill-item">
                    <label>SQL</label>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">70%</div>
                    </div>
                </div>
                <div class="skill-item">
                    <label>AHK</label>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">70%</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Frameworks & Technologies -->
        <div class="card mb-4">
            <div class="card-header">
                <h3 class="mb-0">Frameworks & Technologies</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> ASP.NET
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> .NET Core
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> MonoGame
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Git
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Microsoft SQL Server
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> SSMS
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Visual Studio
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Visual Studio Code
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tools & Software -->
        <div class="card mb-4">
            <div class="card-header">
                <h3 class="mb-0">Tools & Software</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Eclipse
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> VMware
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> MS Office 365
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> MS Project
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-check text-success"></i> Visio
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Soft Skills -->
        <div class="card">
            <div class="card-header">
                <h3 class="mb-0">Soft Skills</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-users fa-2x mb-3"></i>
                                <h5>Leadership</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-tasks fa-2x mb-3"></i>
                                <h5>Problem Solving</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="card h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-lightbulb fa-2x mb-3"></i>
                                <h5>Attention to Detail</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 