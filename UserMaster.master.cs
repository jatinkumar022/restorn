using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class UserMaster : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();


        if (Session["username"] != null)
        {
            login_link.Text = "Logout";
            login_link.NavigateUrl = "logout.aspx";
        }
        else
        {
            login_link.Text = "Login";
            login_link.NavigateUrl = "login.aspx";

        }
    }
}
