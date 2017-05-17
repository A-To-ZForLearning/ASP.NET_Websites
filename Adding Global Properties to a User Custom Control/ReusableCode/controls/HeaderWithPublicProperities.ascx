<%@ Control Language="C#" ClassName="HeaderWithProps" %>

<style type="text/css">
    .auto-style1 {
        width: 1497px;
        height: 188px;
    }
</style>
<script runat="server">
    public string title = "Don't forget the title"; //Default value for the pblic property
</script>

<asp:Panel id="menuPanel1" runat="server">
    <img alt="The Night Owl" 
        src="../Images/Lauras-Bookself-Header-9.5.12.jpg" class="auto-style1"/>
</asp:Panel>
<asp:Panel id="menuPanel" runat="server">
    <a href="Default.aspx">Home</a> |
    <a href="Titles.aspx">Titles</a> |
    <a href="Authors.aspx">Authors</a> |
    <a href="Publishers.aspx">Publishers</a>
</asp:Panel>

<h1><%= title %></h1> <!-- We have to define as ASP.NET control -->