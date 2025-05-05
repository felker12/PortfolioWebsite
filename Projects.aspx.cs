using System;
using System.Collections.Generic;

namespace PortfolioWebsite
{
    public partial class Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize project links
                Project2Github.NavigateUrl = "https://github.com/felker12/skeletons-adventure";
                Project3Github.NavigateUrl = "https://github.com/felker12/TimePunch";
            }
        }
    }
} 