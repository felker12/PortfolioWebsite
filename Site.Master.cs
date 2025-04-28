using System;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace PortfolioWebsite
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the active navigation item based on the current page
                HighlightActiveNavigationItem();
            }
        }

        private void HighlightActiveNavigationItem()
        {
            // Get the current page name
            string currentPage = Path.GetFileNameWithoutExtension(Request.Path).ToLower();

            // Find all navigation links
            var navLinks = GetAllControls(Page).OfType<HyperLink>()
                .Where(link => link.CssClass != null && link.CssClass.Contains("nav-link"));

            foreach (var link in navLinks)
            {
                // Get the page name from the NavigateUrl
                string linkPage = Path.GetFileNameWithoutExtension(link.NavigateUrl).ToLower();

                if (string.IsNullOrEmpty(currentPage) && linkPage == "default")
                {
                    // Handle home page
                    link.CssClass += " active";
                }
                else if (currentPage == linkPage)
                {
                    // Add active class to current page's nav link
                    link.CssClass += " active";
                }
            }
        }

        private IEnumerable<Control> GetAllControls(Control control)
        {
            var controls = control.Controls.Cast<Control>();
            return controls.SelectMany(ctrl => GetAllControls(ctrl)).Concat(controls);
        }

        // Helper method to get page title
        protected string GetPageTitle()
        {
            Page currentPage = HttpContext.Current.Handler as Page;
            if (currentPage != null)
            {
                return currentPage.Title;
            }
            return "My Portfolio";
        }

        // Method to handle any master page events (if needed)
        protected void MasterPage_Event(object sender, EventArgs e)
        {
            // Handle any master page events here
        }

        // You can add more methods here for functionality that should be available across all pages
        // For example, user authentication status, global notifications, etc.

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            // Add any initialization code here
            // This runs before Page_Load
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            // Add any pre-render code here
            // This runs after Page_Load but before the page is rendered
        }
    }
} 