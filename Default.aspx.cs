using System;
using System.Web.UI;

namespace PortfolioWebsite
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set page title
                Page.Title = "Home - My Portfolio";
            }
        }
    }
} 