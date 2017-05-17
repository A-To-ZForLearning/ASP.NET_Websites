using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-CUK1VMT; database= TestWeb; Trusted_Connection=True;");
        con.Open(); // we uses the open method when we're not using DataSet that keeps data in the cach, therefore; we need to keep the 
                    //connection open until we execute the commands.
        SqlCommand com = new SqlCommand("Insert Into registeration VALUES(@userName,@userPassword, @userEmail,@userPhoneN,@userPhoto)", con);

        com.Parameters.AddWithValue("@userName", txtUsrName.Text);
        com.Parameters.AddWithValue("@userPassword ", txtPassword.Text);
        com.Parameters.AddWithValue("@userEmail ", txtemail.Text);
        //We added the System.IO.Path.GetFileName to avoid saving the full path for the file
        string strPhoto = System.IO.Path.GetFileName(File1.PostedFile.FileName);//to get the photo path, we must add the property runat="server" to the input html tage
        com.Parameters.AddWithValue("@userPhoneN", txtPhoneN.Text);
        com.Parameters.AddWithValue("@userPhoto", strPhoto);
        com.ExecuteNonQuery();
        con.Close();

        //To Save the Image on the server, we need to add Images folder to the website folders and use this commands
        File1.PostedFile.SaveAs(Server.MapPath("Images\\" + strPhoto));
        //To Rest the textboxes
        txtUsrName.Text = "";
        txtPassword.Text = "";
        txtConfirmPasssword.Text = "";
        txtemail.Text = "";
        txtPhoneN.Text = "";


    }
}