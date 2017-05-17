<%@ Control Language="C#" ClassName="HeaderWithProps" %>

<style type="text/css">
    .auto-style1 {
        width: 1421px;
        height: 196px;
    }
</style>

<script runat="server">
    public string heading = "Page Heading";
</script>

<asp:Panel ID="Panel1" runat="server">
    <img alt="The Night Owl" 
        src="Images/bookshelf.jpg" class="auto-style1"/>
</asp:Panel>
<asp:Panel id="menuPanel" runat="server"
    CssClass="menuPanel">
    <a href="Default.aspx">Home</a> |
    <a href="Titles.aspx">Titles</a> |
    <a href="Authors.aspx">Authors</a> |
    <a href="Publishers.aspx">Publishers</a>
</asp:Panel>

<h1><%= heading %></h1>