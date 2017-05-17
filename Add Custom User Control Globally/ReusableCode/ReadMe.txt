Add User Control globally
The changes will be in the pages not in the web configuration file.

Changes in the Control folder by adding the 
1- Header Control (User Control with the extension .ascx)
2- Chane the web.config file by adding this line to the code in the line 76

        <add tagName="Header" tagPrefix="uc1" src="~/controls/Header.ascx"/>

3- Change the publisher page by adding the user control through these lines
At the body of the page
  <uc1:Header ID="header1" runat="server" />

