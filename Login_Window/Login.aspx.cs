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

    protected void btnCheck_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.; database= TestWeb; Trusted_Connection=True;");
        SqlCommand com = new SqlCommand("Select AdminName, AdminPass from admins where adminname =@name and AdminPass=@password", con);
        com.Parameters.AddWithValue("@name", txtAdminName.Text);
        com.Parameters.AddWithValue("@password", txtAdminPassword.Text);
        SqlDataAdapter ad = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        ad.Fill(ds, "admins");
        if (ds.Tables["admins"].Rows.Count == 0)
        {            
            Response.Write("Invalid UserName or Password");
        }
        else
        {
            Response.Write("You're authorized to go in");
        }

    }
}