using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["value"].ToString();
            Label1.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Admin_Reg_login/adminlogin.aspx");
        }
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }

    private void BindGrid()
    {
        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM student ORDER BY usn"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
            using (SqlCommand cmd1 = new SqlCommand("Select * from department ORDER BY usn"))
            {
                using (SqlDataAdapter sda1 = new SqlDataAdapter())
                {
                    cmd1.Connection = con;
                    sda1.SelectCommand = cmd1;
                    using (DataTable dt1 = new DataTable())
                    {
                        sda1.Fill(dt1);
                        GridView2.DataSource = dt1;
                        GridView2.DataBind();
                    }
                }
            }
            using (SqlCommand cmd2 = new SqlCommand("Select * from course ORDER BY usn,subject_code"))
            {
                using (SqlDataAdapter sda2 = new SqlDataAdapter())
                {
                    cmd2.Connection = con;
                    sda2.SelectCommand = cmd2;
                    using (DataTable dt2 = new DataTable())
                    {
                        sda2.Fill(dt2);
                        GridView3.DataSource = dt2;
                        GridView3.DataBind();
                    }
                }
            }
            using (SqlCommand cmd3 = new SqlCommand("Select * from exam ORDER BY usn,subject_code"))
            {
                using (SqlDataAdapter sda3 = new SqlDataAdapter())
                {
                    cmd3.Connection = con;
                    sda3.SelectCommand = cmd3;
                    using (DataTable dt3 = new DataTable())
                    {
                        sda3.Fill(dt3);
                        GridView4.DataSource = dt3;
                        GridView4.DataBind();
                    }
                }
            }
            using (SqlCommand cmd4 = new SqlCommand("Select * from attendance ORDER BY usn,subject_code"))
            {
                using (SqlDataAdapter sda4 = new SqlDataAdapter())
                {
                    cmd4.Connection = con;
                    sda4.SelectCommand = cmd4;
                    using (DataTable dt4 = new DataTable())
                    {
                        sda4.Fill(dt4);
                        GridView5.DataSource = dt4;
                        GridView5.DataBind();
                    }
                }
            }
        }
    }   
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView2.PageIndex = e.NewPageIndex;
        GridView3.PageIndex = e.NewPageIndex;
        GridView4.PageIndex = e.NewPageIndex;
        GridView5.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
}
