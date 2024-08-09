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

public partial class feedback : System.Web.UI.Page
{
    
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("insert into feedback(username,email,contact,message)values('" + unm.Text+ "','" + email.Text + "','" + TextBox3.Text + "','" +TextBox4.Text + "')", con);
        cmd.ExecuteNonQuery();
        string a = "sent sucessfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + a + "')", true);
       


    }
}
