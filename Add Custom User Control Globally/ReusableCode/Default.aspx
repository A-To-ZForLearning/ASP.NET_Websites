<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="~/controls/Header.ascx" TagName="header" TagPrefix="headerControl" %>
<!-- TagPrefix specify the Tag name as it's down -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Night Owl</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!---Must add the User Control Tags and add the run at the server property---> 
        <headerControl:header ID="header1" runat="server" />
        <h1><span lang="en-us">Home Page</span></h1>
    <asp:Panel runat="server">
        Welcome to The Laura&#39;s Book Library, where all of your technical needs are met!
    </asp:Panel>
    </form>
</body>
</html>
