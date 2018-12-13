using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int userId = 0;
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("studentregister"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    string password = RandomPassword(10);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@usn", usn.Text);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.Connection = con;
                    con.Open();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
            }
            string message = string.Empty;
            Boolean flag = false;
            switch (userId)
            {
                case -1:
                    message = "USN registered already.\\nPlease choose a different usn.";
                    usn.Text = "";
                    break;
                default:
                    flag = true;
                    break;
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            if (flag == true)
            {
                Response.Redirect("http://localhost:61655/Student_Reg_login/studentreg.aspx");
            }

        }
    }
    private void BindGrid()
    {
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd1 = new SqlCommand("SELECT usn,password FROM studentreg ORDER BY usn"))
            {
                using (SqlDataAdapter sda1 = new SqlDataAdapter())
                {
                    cmd1.Connection = con;
                    sda1.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda1.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
    private string RandomPassword(int Length)
    {
        string allowedChars = "abcdefghijkmnopqrstuvwxyz0123456789";
        char[] chars = new char[Length];
        Random rd = new Random();
        for (int i = 0; i < Length; i++)
        {
            chars[i] = allowedChars[rd.Next(0, allowedChars.Length)];
        }
        return new string(chars);
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}