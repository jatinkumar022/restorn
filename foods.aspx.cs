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

public partial class chinese : System.Web.UI.Page
{
  
    
   
   
    SqlConnection con;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        s1.SelectCommand = "select * from food_items where menu_name='"+ Request.QueryString["mn"] +"' ";
        s2.SelectCommand = "select * from menu where menu_name='" + Request.QueryString["mn"] + "'";


        
    
    }

    protected void btn_command(object s, CommandEventArgs e1)
    {


        Response.Write(e1.CommandArgument.ToString());



        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }

        else
        {


         Session["fid"] = e1.CommandArgument.ToString();
         Response.Redirect("enterqty.aspx");


        }




    }
}
