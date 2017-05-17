Add User Control Locally
The changes will be in the pages not in the web configuration file.

Changes in the Control folder by adding the 
1- Header Control (User Control with the extension .ascx)
2- Change the default page by adding the user control through these lines
at the top of the page

<%@ Register Src="~/controls/Header.ascx" TagName="header" TagPrefix="headerControl" %>

At the body of the page
  <headerControl:header ID="header1" runat="server" />

