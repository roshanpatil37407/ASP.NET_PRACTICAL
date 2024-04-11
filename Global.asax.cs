using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace global
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            HttpContext.Current.Application["AppStartupTime"] = DateTime.Now;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started
            HttpContext.Current.Session["SessionStartTime"] = DateTime.Now;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            // Code that runs on each request
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            // Code that runs on each request after the authentication stage
        }


        protected void Application_Error(Object sender, EventArgs e)
        {
            Response.Write("<font face=\"Tahoma\" size=\"2\" color=\"red\">");
            Response.Write("Oops! Looks like an error occurred!!<hr></font>");
            Response.Write("<font face=\"Arial\" size=\"2\">");
            Response.Write(Server.GetLastError().Message.ToString());
            Response.Write("<hr>" + Server.GetLastError().ToString());
            Server.ClearError();
        }

        protected void Session_End(object sender, EventArgs e)
        {
            // Code that runs when a session ends
            // Note: The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer
            // or SQLServer, the event is not raised.
        }

        protected void Application_End(object sender, EventArgs e)
        {
            // Code that runs on application shutdown
        }

       

    }
}
   