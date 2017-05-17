using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //if we don't have a username and password for the database connection string
        //we have to put this statement at the end of the connection string 
        //Trusted_Connection=True;
        //Also, we must add columns in ths select statement with the "and" not with "," 

        SqlConnection con = new SqlConnection("server=DESKTOP-CUK1VMT; database = myNewDB1; Trusted_Connection=True;");
        SqlCommand com = new SqlCommand("select * from users where username = @username and password =@password", con);
        com.Parameters.AddWithValue("@username", txtUserN.Text);
        com.Parameters.AddWithValue("@password", txtPWD.Text);
        SqlDataAdapter adpt = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        adpt.Fill(ds, "users");
        if (ds.Tables["users"].Rows.Count==0)
            Response.Write("Invalid Username and Password");
        else
            Response.Redirect("RegisterationPage.aspx");




    }
}