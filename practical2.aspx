<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practical2.aspx.cs" Inherits="practical2.practical2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Web server Controls</h1>
            <asp:Label ID="Label1" runat="server" Text="Enter your Name" BackColor="Yellow" BorderColor="Pink"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="submit" runat="server" Text="submit" BackColor="Red" OnClick="submit_Click" />
            <asp:Label ID="rp" runat="server" Text=""></asp:Label>
            
        </div>
    </form>
</body>
</html>
