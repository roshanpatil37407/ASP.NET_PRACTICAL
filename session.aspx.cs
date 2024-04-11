using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the name is stored in the session
                if (Session["UserName"] != null)
                {
                    lblMessage.Text = "Welcome back, " + Session["UserName"].ToString();
                }
                else
                {
                    lblMessage.Text = "Please enter your name.";
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Save the name entered by the user in session and a cookie
            string userName = txtName.Text.Trim();
            Session["UserName"] = userName;

            // Create a cookie and store the username
            HttpCookie cookie = new HttpCookie("UserNameCookie");
            cookie.Value = userName;
            // Set the cookie to expire after 7 days
            cookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cookie);

            lblMessage.Text = "Name saved in session and cookie.";
        }

    }

    }
