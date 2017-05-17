using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Papers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        //We must open and close the connection
        // we can not to mention the column names
        //Focus on how to save the Image file name
        SqlConnection con = new SqlConnection("server = DESKTOP-CUK1VMT; database = myNewDB1; Trusted_Connection = True;");
        SqlCommand com = new SqlCommand("insert into Papers values(@title, @details, @image)", con);
        com.Parameters.AddWithValue("@title", txtTitle.Text);
        com.Parameters.AddWithValue("@details", txtDet.Text);
        string strImg = System.IO.Path.GetFileName(File1.PostedFile.FileName);
        com.Parameters.AddWithValue("@image", strImg);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        File1.PostedFile.SaveAs(Server.MapPath("Images\\")+ strImg);
    }
}