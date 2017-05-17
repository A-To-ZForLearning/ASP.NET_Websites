Changes on the AuthorInsert.aspx.cs page

1- //Add this method to check if the Insertion process done succesfully
    //Call this method on the DetailsView Server Control with the property
    //OnItemInserted
    protected void DetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.AffectedRows != 0)
        {
            MyLabel1.Text = "Insertion Done!";
           // Response.Redirect("Authors.aspx");

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