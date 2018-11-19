using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Boolean flag = false;
        SqlCommand com = new SqlCommand("studentlogin", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@usn", usn.Text);
        com.Parameters.AddWithValue("@password", password.Text);
        con.Open();
        SqlDataReader rd = com.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            flag = true;
        }
        else
        {
            usn.Text = "";
            Label2.Text = "Invalid usn or password.";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        if (flag)
        {
            Session["usn"] = usn.Text;
            Response.Redirect("http://localhost:61655/Student/studentview.aspx");
        }
    }
}