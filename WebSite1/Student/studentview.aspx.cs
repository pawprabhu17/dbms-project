using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = Session["usn"].ToString();
            Label1.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Student_Reg_login/main.aspx");
        }
        if (!this.IsPostBack)
        {
            if (Session["usn"] != null)
            {
                String message = "Welcome" + Session["usn"] + " to the page";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }            
            this.BindGrid();
        }
    }

    private void BindGrid()
    {

        using (SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf; Integrated Security = True"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT s.*,d.department_name FROM student s,department d where s.usn='" + Session["usn"] + "'and d.usn='" + Session["usn"] + "'"))
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
            using (SqlCommand cmd1 = new SqlCommand("SELECT c.subject_code,c.subject_name,e.marks1,e.marks2,e.marks3,a.percentage FROM course c,exam e,attendance a where c.usn='" + Session["usn"] + "'and c.subject_code=e.subject_code and e.usn='" + Session["usn"] + "' and c.subject_code=a.subject_code and a.usn='" + Session["usn"] + "'ORDER BY c.subject_code"))
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:61655/Student/studentfeedback.aspx");
    }    
}