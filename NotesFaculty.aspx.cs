using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class samplepaper : System.Web.UI.Page
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
        Label2.Visible = false;
        if (Session["username"] != null)
        {
            Label3.Text = Session["username"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        string filePath = FileUpload1.PostedFile.FileName;
        string filename1 = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename1);
        string type = String.Empty;

        if (!FileUpload1.HasFile)
        {
            Label2.Text = "Please Select File";
        }
        else
            if (FileUpload1.HasFile)
            {

                try
                {
                    // Added by vithal wadje for Csharp-Corner contribution

                    switch (ext)
                    {
                        case ".doc":

                            type = "application/word";

                            break;

                        case ".docx":

                            type = "application/word";

                            break;

                    }

                    if (type != String.Empty)
                    {
                        connection();
                        Stream fs = FileUpload1.PostedFile.InputStream;
                        BinaryReader br = new BinaryReader(fs);
                        Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        query = "insert into samplepaper(Name,type,data,faculty)" + " values (@Name, @type, @Data,@faculty)";
                        com = new SqlCommand(query, con);
                        com.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename1;
                        com.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                        com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                        com.Parameters.AddWithValue("@faculty", Label3.Text);
                        com.ExecuteNonQuery();
                        Label2.ForeColor = System.Drawing.Color.Green;
                        Label2.Text = "Word File Uploaded successfully";

                    }
                    else
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;

                        Label2.Text = "Select Only word Files";


                    }
                }
                catch (Exception ex)
                {
                    Label2.Text = "Error: " + ex.Message.ToString();


                }

            }

    }
}