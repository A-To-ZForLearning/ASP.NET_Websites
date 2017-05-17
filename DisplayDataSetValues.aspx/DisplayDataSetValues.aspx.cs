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
        SqlConnection con = new SqlConnection("server=.; database= TestWeb; Trusted_Connection=True;");
        SqlCommand com = new SqlCommand("Select AdminName, AdminPass from admins", con);
        com.Parameters.AddWithValue("@name", txtAdminName.Text);
        com.Parameters.AddWithValue("@password", txtAdminPassword.Text);
        SqlDataAdapter ad = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        ad.Fill(ds, "admins");
        if (ds.Tables["admins"].Rows.Count != 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                for(int j =0; j<ds.Tables[0].Columns.Count;j++)
                Response.Write(ds.Tables[0].Rows[i][j].ToString() + "&nbsp;");
                
                Response.Write("<br/>");
            }


        }
    }
    protected void btnCheck_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.; database= TestWeb; Trusted_Connection=True;");
        SqlCommand com = new SqlCommand("Select AdminName, AdminPass from admins", con);
        com.Parameters.AddWithValue("@name", txtAdminName.Text);
        com.Parameters.AddWithValue("@password", txtAdminPassword.Text);
        SqlDataAdapter ad = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        ad.Fill(ds, "admins");


        if (ds.Tables["admins"].Rows.Count != 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (ds.Tables[0].Rows[i][0].Equals(txtAdminName.Text))
                {
                    Response.Write("Valid Username");
                    Response.Write("<br/>");
                    if (ds.Tables[0].Rows[i][1].Equals(txtAdminPassword.Text))
                    {
                        Response.Write("Valid Password");
                        Response.Write("<br/>");
                    }
                    else
                    {
                        Response.Write("Not Valid Password");
                        
                    }
                }
                else
                {
                    Response.Write("Not Valid Username");
                   
                }
            }


        }
        else
            Response.Write("No Data");
        

    }
}