<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wizard.aspx.cs" Inherits="WebApplication13.wizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="False" 
OnFinishButtonClick="Wizard1_FinishButtonClick">
 <WizardSteps>
 <asp:WizardStep runat="server" Title="Step 1">
 <asp:Label ID="Label1" runat="server" Text="Please select a 
category:"></asp:Label><br />
 <asp:DropDownList ID="DropDownList1" runat="server"
DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
DataValueField="CategoryID"></asp:DropDownList>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
ConnectionStrings:YourConnectionString %>"
 SelectCommand="SELECT [CategoryID], [CategoryName] FROM 
~ 35 ~
[Categories]"></asp:SqlDataSource>
 </asp:WizardStep>
 <asp:WizardStep runat="server" Title="Step 2">
 <asp:Label ID="Label2" runat="server" Text="Please select a 
product:"></asp:Label><br />
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
DataSourceID="SqlDataSource2">
 <Columns>
 <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
 <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" />
 </Columns>
 </asp:GridView>
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ 
ConnectionStrings:YourConnectionString %>"
 SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Products] 
WHERE [CategoryID] = @CategoryID">
 <SelectParameters>
 <asp:ControlParameter ControlID="DropDownList1" Name="CategoryID" 
PropertyName="SelectedValue" Type="Int32" />
 </SelectParameters>
 </asp:SqlDataSource>
 </asp:WizardStep>
 </WizardSteps>
 </asp:Wizard


        </div>
    </form>
</body>
</html>
