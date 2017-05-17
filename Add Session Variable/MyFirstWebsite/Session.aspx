<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
        <asp:Button ID="btnAddPaper" runat="server" OnClick="btnAddPaper_Click" Text="Add Paper" />
        <asp:Button ID="btnEditPaper" runat="server" OnClick="btnEditPaper_Click" Text="Edit a Paper" />
    
    </div>
    </form>
</body>
</html>
