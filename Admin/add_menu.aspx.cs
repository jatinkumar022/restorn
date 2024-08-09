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

public partial class add_menu : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open(); 
    }

    protected void addmenu_Click(object sender, EventArgs e)
    {
        cmd=new SqlCommand("insert into menu(menu_name)values('"+TextBox1.Text+"')",con);
        cmd.ExecuteNonQuery();
        Label1.Text="saved";
        GridView1.DataSourceID = "s1";
        GridView1.DataBind();
        

    }
}
