using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practical_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            Response.Write("<br/> this is before initialization");
            base.OnInit(e);
        }
        protected override void OnInitComplete(EventArgs e)
        {
            Response.Write("<br/> this is initialization");
            base.OnInitComplete(e);
        }
        protected override void OnPreLoad(EventArgs e)
        {
            Response.Write("<br/> this is  page loading");
            base.OnPreLoad(e);
        }
        protected override void OnLoad(EventArgs e)
        {
            Response.Write("<br/> this is before loading");
            base.OnLoad(e);
        }
        protected override void OnLoadComplete(EventArgs e)
        {
            Response.Write("<br/> this load complete");
            base.OnLoadComplete(e);
        }
        protected override void OnPreRender(EventArgs e)
        {
            Response.Write("<br/> this is page render ");
            base.OnPreRender(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }
    }
}