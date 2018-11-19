using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_adminpwchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label2.Text = Session["value"].ToString();
            Label2.Visible = false;
        }
        catch
        {
            Response.Redirect("http://localhost:61655/Admin_Reg_login/adminlogin.aspx");
        }
        Label3.Text = Session["value"].ToString();
        Label3.ForeColor = System.Drawing.Color.Green;
    }    
    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection SQLConn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\source\repos\WebSite1\WebSite1\App_Data\studentprogress.mdf;Integrated Security=True"))
        {
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * from [dbo].[admin] where password='" + TxtName1.Text + "'", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            if (DT.Rows.Count == 0)
            {
                lblMessage.Text = "Invalid current password";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SQLAdapter = new SqlDataAdapter("update admin set updatePwDate='"+DateTime.Now+"',password='" + TxtName2.Text + "' where username='" + Session["value"].ToString() + "'", SQLConn);
                SQLAdapter.Fill(DT);
                lblMessage.Text = "Password changed successfully";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}