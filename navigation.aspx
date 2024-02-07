<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="navigation.aspx.cs" Inherits="practical12.navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Navigation Controls</h1>
           
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Contacts" NodeIndent="10">
                <HoverNodeStyle Font-Underline="False" />
                <Nodes>
                    <asp:TreeNode Text="BCA" Value="BCA">
                        <asp:TreeNode Text="SYBCA" Value="SYBCA">
                            <asp:TreeNode Text="C#" Value="C#"></asp:TreeNode>
                            <asp:TreeNode Text="JAVA" Value="JAVA"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="TYBCA" Value="TYBCA">
                            <asp:TreeNode Text="PHP" Value="PHP"></asp:TreeNode>
                            <asp:TreeNode Text="PYTHON" Value="PYTHON"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>


        
    </form>
</body>
</html>
