using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommandBuilder cm = null;
        SqlCommand cmd1 = null;
        DataTable datatab = new DataTable();
        SqlConnection con1 = null;
        SqlDataReader dr1 = null;
        SqlDataAdapter da = null;
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        con1 = new SqlConnection(connectionString);
        con1.Open();
        da = new SqlDataAdapter("select *  from login", con1);
        cm = new SqlCommandBuilder(da);
        da.Fill(datatab);
        cmd1 = new SqlCommand("select * from login where username='" + TextBox8.Text + "'", con1);
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {

            Label6.Text = "Sorry change the username.  This username already exists";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox8.Focus();
            con1.Close();
            return;
        }
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("insert into login (name,dateofbirth,gender,address,city,country,mobile,emailid,username,password) values(@name,@dateofbirth,@gender,@address,@city,@country,@mobile,@emailid,@username,@password)", con);
                cmd.Parameters.AddWithValue("name", TextBox1.Text);
                cmd.Parameters.AddWithValue("dateofbirth", TextBox2.Text);
                cmd.Parameters.AddWithValue("gender", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("city", TextBox4.Text);
                cmd.Parameters.AddWithValue("country", TextBox5.Text);
                cmd.Parameters.AddWithValue("mobile", TextBox6.Text);
                cmd.Parameters.AddWithValue("emailid", TextBox7.Text);
                cmd.Parameters.AddWithValue("username", TextBox8.Text);
                cmd.Parameters.AddWithValue("password", TextBox9.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                Session["username"] = TextBox8.Text;
                Response.Redirect("default.aspx");
            }
        }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedIndex = 0;
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}
