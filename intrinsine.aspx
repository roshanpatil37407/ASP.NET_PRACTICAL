<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intrinsine.aspx.cs" Inherits="int.intrinsine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

               <h2>Welcome to ASP.NET Intrinsic Objects Demo</h2>
            <% 
                // Using Request object to get user input
                string userName = Request["username"];
                if (!string.IsNullOrEmpty(userName))
                {
                    Response.Write("Hello, " + userName + "!<br />");
                    
                    // Using Session object to persist data across requests
                    Session["UserName"] = userName;
                    Response.Write("Your name has been saved in the session.<br />");
                }
                else
                {
                    Response.Write("Please enter your name:<br />");
                    %>
                    ram
                    <input type="submit" value="Submit" />
                    <%
                }
                
                // Using Session object to retrieve data from previous requests
                string savedUserName = Session["UserName"] as string;
                if (!string.IsNullOrEmpty(savedUserName))
                {
                    Response.Write("Your name from previous session: " + savedUserName + "<br />");
                }
            %>


        </div>
    </form>
</body>
</html>
