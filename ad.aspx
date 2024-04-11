<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad.aspx.cs" Inherits="WebApplication10.ad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisements.xml"  />

        </div>
        </form>
</body>
</html>
