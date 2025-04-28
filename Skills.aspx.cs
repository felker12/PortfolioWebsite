using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioWebsite
{
    public partial class Skills : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load skills data when the page is first loaded
                LoadSkillsData();
            }
        }

        private void LoadSkillsData()
        {
            // This method could be used to load skills data from a database or configuration file
            // For now, we'll keep it as a placeholder for future implementation

            // Example of how you might load programming language skills dynamically:
            var programmingSkills = GetProgrammingSkills();
            foreach (var skill in programmingSkills)
            {
                // You could dynamically create progress bars here
                // For now, we're using static content in the ASPX file
            }
        }

        private List<SkillInfo> GetProgrammingSkills()
        {
            // This would typically fetch data from a database
            // For now, returning a hardcoded list as an example
            return new List<SkillInfo>
            {
                new SkillInfo { Name = "C#", Proficiency = 90 },
                new SkillInfo { Name = "JavaScript", Proficiency = 85 },
                new SkillInfo { Name = "HTML/CSS", Proficiency = 90 },
                new SkillInfo { Name = "SQL", Proficiency = 85 },
                new SkillInfo { Name = "ASP.NET", Proficiency = 88 }
            };
        }

        private List<string> GetFrameworksAndTechnologies()
        {
            // This would typically fetch data from a database
            return new List<string>
            {
                "ASP.NET WebForms",
                "ASP.NET MVC",
                "Entity Framework",
                "SQL Server",
                "Bootstrap",
                "jQuery",
                "Git",
                "Azure DevOps"
            };
        }

        private List<SoftSkill> GetSoftSkills()
        {
            return new List<SoftSkill>
            {
                new SoftSkill 
                { 
                    Name = "Team Collaboration",
                    Description = "Experience working in agile teams and cross-functional projects",
                    IconClass = "fas fa-users"
                },
                new SoftSkill 
                { 
                    Name = "Project Management",
                    Description = "Skilled in managing project timelines and deliverables",
                    IconClass = "fas fa-tasks"
                },
                new SoftSkill 
                { 
                    Name = "Problem Solving",
                    Description = "Strong analytical and creative problem-solving abilities",
                    IconClass = "fas fa-lightbulb"
                }
            };
        }

        // Helper class to structure skill data
        private class SkillInfo
        {
            public string Name { get; set; }
            public int Proficiency { get; set; }
        }

        // Helper class to structure soft skills data
        private class SoftSkill
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public string IconClass { get; set; }
        }

        // You could add methods here to handle any user interactions
        // For example, filtering skills, sorting, or updating skill ratings
    }
} 