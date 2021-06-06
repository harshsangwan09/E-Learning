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

public partial class resultlogin : System.Web.UI.Page
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
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con1 = new SqlConnection(connectionString);
        con1.Open();
        da = new SqlDataAdapter("select *  from login", con1);
        cm = new SqlCommandBuilder(da);
        da.Fill(datatab);
        cmd1 = new SqlCommand("select * from login where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con1);
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("usertestresult.aspx");
        }
        Label3.Text = "Invaild Username Or Password";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
        con1.Close();
        return;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
