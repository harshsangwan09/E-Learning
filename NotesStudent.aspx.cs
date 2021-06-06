using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class viewsamplepaper : System.Web.UI.Page
{
    public string query, constr;
    public SqlCommand com;
    public SqlConnection con;
    public void connection()
    {

        constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con = new SqlConnection(constr);
        con.Open();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        connection();
        string facultyname = DropDownList1.SelectedValue;
        query = "Select * from samplepaper where faculty='"+facultyname+"'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        connection();
        SqlCommand com = new SqlCommand("select Name,type,data from samplepaper where id=@id ", con);
        com.Parameters.AddWithValue("id", GridView1.SelectedRow.Cells[1].Text);
        //com.Parameters.AddWithValue("faculty", DropDownList1.SelectedValue);
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read())
        {
            Response.Clear();
            Response.Buffer = true;

            Response.ContentType = dr["type"].ToString();
            Response.AddHeader("content-disposition", "attachment;filename=" + dr["Name"].ToString());
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.BinaryWrite((byte[])dr["data"]);
            Response.End();
        }
    }
}