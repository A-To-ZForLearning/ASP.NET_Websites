using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //We uses the Session variable to welcome the use in the session page
        Label1.Text = "Welcome " + Session["sn"].ToString();
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterationPage.aspx");
    }

    protected void btnAddPaper_Click(object sender, EventArgs e)
    {
        Response.Redirect("Papers.aspx");
    }

    protected void btnEditPaper_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditDeletePapers.aspx");
    }
}