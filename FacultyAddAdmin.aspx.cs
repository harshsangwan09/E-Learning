using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FacultyAddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = DateTime.Today.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = null;
        string str1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        connection = new SqlConnection(str1);
        connection.Open();

        SqlCommand command = null;
        command = new SqlCommand("select * from faculty where username=@username", connection);
        command.Parameters.AddWithValue("username", TextBox13.Text);

        SqlDataReader dr = command.ExecuteReader();
        while (dr.Read())
        {
            Response.Write("<script language=javascript>alert('Username already Exist !')</script>");
            connection.Close();
            return;

        }
        connection.Close();

        connection.Open();

        command = new SqlCommand("insert into faculty(username,password,facultyname,qualification,joindate,designation,type,contactno) values(@username,@password,@facultyname,@qualification,@joindate,@designation,@type,@contactno)", connection);

        command.Parameters.AddWithValue("username", TextBox13.Text);
        command.Parameters.AddWithValue("password", TextBox14.Text);
        // command.Parameters.AddWithValue("occupationoftheapplicant", TextBox4.Text);
        command.Parameters.AddWithValue("facultyname", TextBox2.Text);
        command.Parameters.AddWithValue("qualification", TextBox3.Text);
        command.Parameters.AddWithValue("joindate", TextBox8.Text);
       // command.Parameters.AddWithValue("desig", imgbytes);
        command.Parameters.AddWithValue("designation", TextBox9.Text);
        command.Parameters.AddWithValue("type", TextBox16.Text);
        //command.Parameters.AddWithValue("educationaldetails2", TextBox10.Text);
        command.Parameters.AddWithValue("contactno", TextBox7.Text);
        

        // command.Parameters.AddWithValue("professionalqualification1", TextBox11.Text);
        // command.Parameters.AddWithValue("professionalqualification2", TextBox12.Text);
        command.ExecuteNonQuery();
        
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox2.Text = "";
        // TextBox4.Text = "";
        TextBox3.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox16.Text = "";
        TextBox7.Text = "";
        connection.Close();
        Response.Write("<script language=javascript>alert('YOUR DATA HAS BEEN INSERTED SUCCESSFULLY')</script>");
    }
}