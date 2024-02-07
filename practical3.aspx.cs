using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace practical4
{
    public partial class practical4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
     
               
                if (Page.IsValid)
                {
                   
                    string name = txtName.Text;
                    string email = txtEmail.Text;
                    Lb.Text = $"Hello, {name}! Your email ({email}) is valid.";
            }
            else
            {
                    Lb.Text = "Please fix the validation errors.";
            }



        }
        }
    }


