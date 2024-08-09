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

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
   


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }

   


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from register where username='" + username.Text + "' and password='" + password.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        
        if (username.Text == "admin" && password.Text == "admin")
        {
            Session["username"] = username.Text;
            Response.Redirect("Admin/homeadmin.aspx");

        }

        else
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                if (dt.Rows[i]["username"].ToString() ==username.Text && dt.Rows[i]["password"].ToString() == password.Text)
                {
                    Session["username"] = username.Text;
                    Response.Redirect("default.aspx");

                }
            }

            string a = "username and password not exists - first do register";

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + a + "')", true);

        }
    }


   
}