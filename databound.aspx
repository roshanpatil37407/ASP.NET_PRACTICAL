<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databound.aspx.cs" Inherits="WebApplication15.databound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Data bound</h2>

               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Columns>
            </asp:GridView>

            <h2>Repeater Demo</h2>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div>
                        ID: <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' /><br />
                        Name: <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' /><br />
                        Email: <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>' /><br />
                    </div>
                    <hr />
                </ItemTemplate>
            </asp:Repeater>


        </div>
    </form>
</body>
</html>
