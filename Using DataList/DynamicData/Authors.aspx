<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Authors.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Author List"/>    
    <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="au_id" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="203px" Width="1359px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="au_id" HeaderText="au_id" InsertVisible="False" ReadOnly="True" SortExpression="au_id" />
                    <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
                    <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString %>" SelectCommand="SELECT * FROM [authors]"></asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
