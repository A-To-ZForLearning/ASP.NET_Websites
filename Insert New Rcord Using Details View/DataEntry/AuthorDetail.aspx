<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="AuthorDetail.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author Detail</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Author Detail"/>    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="50px" Width="181px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="au_id" HeaderText="Author ID" InsertVisible="False" ReadOnly="True" SortExpression="au_id">
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_lname" HeaderText="Author Last Name" SortExpression="au_lname">
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_fname" HeaderText="Author First Name" SortExpression="au_fname">
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip">
                <ItemStyle Wrap="False" />
                </asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString %>" SelectCommand="SELECT * FROM [authors]"></asp:SqlDataSource>
    </form>
</body>
</html>
