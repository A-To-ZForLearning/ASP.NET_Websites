<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="JoinedData.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Titles Report</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Titles Report"/>    
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="202px" Width="588px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:BoundField DataField="price" DataFormatString="{0:C}" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="pub_name" HeaderText="Publisher Name" SortExpression="pub_name" />
                <asp:BoundField DataField="AuthorFullName" HeaderText="Author Name" ReadOnly="True" SortExpression="AuthorFullName" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString %>" SelectCommand="SELECT titles.title, titles.price, publishers.pub_name, authors.au_fname + ' ' + authors.au_lname AS AuthorFullName FROM titles INNER JOIN authors ON titles.au_id = authors.au_id INNER JOIN publishers ON titles.pub_id = publishers.pub_id ORDER BY titles.title"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
