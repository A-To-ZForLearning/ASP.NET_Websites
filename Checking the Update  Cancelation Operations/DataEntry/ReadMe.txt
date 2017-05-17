Changes on the AuthorUpdate.aspx.cs page

1- //Add this method to check if the Update process done succesfully
    //Call this method on the DetailsView Server Control with the property
    //OnItemUpdated
    protected void DetailView_ItemUpdate(object sender,
       DetailsViewUpdatedEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            Response.Redirect("~/Authors.aspx");
        }
    }

2-    //Add this method to check if the Insertion process has cancelled by the User
    //Call this method on the DetailsView Server Control with the property
    //OnItemCommand
    protected void DetailsView_ItemCommand(Object sender, DetailsViewCommandEventArgs e)
	{
	 if(e.CommandName=="Cancel")
        {
            MyLabel1.Text = "Insertion Cancelled By User";
        }
		    
	}

	3- Call the two methods inside the Details view at the end

	<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="278px" AllowPaging="True" EnableModelValidation="True" DefaultMode="Insert"

             OnItemInserted="DetailsView_ItemInserted"
             OnItemCommand="DetailsView_ItemCommand">

  4- To provid the au_id number we modified the select statement by adding a condition in the where
  relay on the au_id value that we are going to provid in the page byadding 
  ?au_id=#

  and get this value by adding 
   <SelectParameters>

                <asp:QueryStringParameter Name="au_id" QueryStringField="au_id" Type="Int32" />

            </SelectParameters>

			to the page AuthorUpdate.aspx page