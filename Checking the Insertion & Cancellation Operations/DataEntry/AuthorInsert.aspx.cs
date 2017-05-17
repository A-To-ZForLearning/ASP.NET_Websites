using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Add this method to check if the Insertion process done succesfully
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
    //Add this method to check if the Insertion process has cancelled by the User
    //Call this method on the DetailsView Server Control with the property
    //OnItemCommand
    protected void DetailsView_ItemCommand(Object sender, DetailsViewCommandEventArgs e)
    {
        if(e.CommandName=="Cancel")
        {
            MyLabel1.Text = "Insertion Cancelled By User";
        }

    }
}
