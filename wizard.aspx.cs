using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication13
{
    public partial class wizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0; // Set the active step to the first step
            }
        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e) { }


        }
}
