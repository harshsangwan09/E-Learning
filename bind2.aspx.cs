using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class bind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonBind_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = GetVideoInfo();
        GridView1.DataBind();
    }

    private DataTable GetVideoInfo()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Videos where status='OK'", connectionString);
        DataTable table = new DataTable();
        adapter.Fill(table);
        return table;
    }
}