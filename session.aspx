<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session.aspx.cs" Inherits="WebApplication12.session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Session and Cookies Demo</h2>
            <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox>
            <asp:Button ID="btnSave" runat="server" Text="Save Name" OnClick="btnSave_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
