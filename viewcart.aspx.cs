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


public partial class viewcart : System.Web.UI.Page
{
  
   // SqlCommand cmd;
   // SqlDataAdapter da;
    //SqlConnection con;
   
    protected void Page_Load(object sender, EventArgs e)
    {

        s1.SelectCommand = "select cart_id,username,food_id,food_name,price,qty,total,date from cart where username='" + Session["username"].ToString() + "'";
    }

    protected void txt_change(object s, EventArgs e)
    {
       

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
       
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e1)
    {
        if (e1.CommandName == "delete")
        {
            s1.DeleteCommand = "delete from cart where food_id=" + e1.CommandArgument.ToString() + "";
        }
        else
        {
            int id = int.Parse(e1.CommandArgument.ToString());
            Session["foodid"] = id.ToString();
            Response.Redirect("chgqty.aspx");
        }
    }
}
