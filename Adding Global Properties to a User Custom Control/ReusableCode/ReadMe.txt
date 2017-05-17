Add User Control globally and adding a globall peoperty
The changes will be 

1- Adding new User Custome Control names HeaderWithPublicProperities to the Controls folder and add these lines

<script runat="server">
    public string title = "Don't forget the title"; //Default value for the pblic property
</script>
.
.
.
.
.
<h1><%= title %></h1> <!-- We have to define as ASP.NET control -->

2- And the Changes in the web configuration file by adding the add key
<add tagName="HeaderWithPulicProperities" tagPrefix="PublicPeoperties" src="~/controls/HeaderWithPublicProperities.ascx"/>
      
3- Change to the publisher page by adding the user control through these lines
At the body of the page
    <PublicPeoperties:HeaderWithPulicProperities runat="server" title="List of Books" />

