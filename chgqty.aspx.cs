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


public partial class chgqty : System.Web.UI.Page
{
    DataTable dt;
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlConnection con;
    DataSet ds = new DataSet();
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();

       
        da = new SqlDataAdapter("select * from food_items where food_id=2" , con);


        da.Fill(ds, "food_items");
        dt = ds.Tables[0];

        category.Text = dt.Rows[0][1].ToString();
        name.Text = dt.Rows[0][2].ToString();
        Image1.ImageUrl = dt.Rows[0][4].ToString();
        price.Text = dt.Rows[0][3].ToString();
        
    }
    protected void button_click(object sender, EventArgs e)
    {
        int id = int.Parse(Session["foodid"].ToString());
        int total = int.Parse(txtqty.Text) * int.Parse(price.Text);
        cmd = new SqlCommand("update cart set qty=" + txtqty.Text + ",total=" + total + " where food_id="+id , con);
        cmd.ExecuteNonQuery();
        Response.Redirect("viewcart.aspx");
    }
}
