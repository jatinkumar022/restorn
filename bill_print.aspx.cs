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

public partial class bill_print : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    SqlDataAdapter da, d2, d3;
    SqlConnection con;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    SqlCommand cmd;
    static string a = "";
    int b;
    int c1;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        int c = int.Parse(Session["cart_id"].ToString());
        s1.SelectCommand = "select food_name,qty,price,total from place_order where cart_id=" + c + "";

        da = new SqlDataAdapter("select * from place_order where cart_id=" + c + "", con);
        da.Fill(ds, "place_order");
        dt = ds.Tables[0];
        date.Text = dt.Rows[0][8].ToString();
        unm.Text = dt.Rows[0][2].ToString();

        d3 = new SqlDataAdapter("select sum(total) from place_order where cart_id=" + c + "", con);

        DataTable dt3 = new DataTable();
        d3.Fill(dt3);
        total.Text = dt3.Rows[0][0].ToString();
     
    }
    protected void btnclick(object s, EventArgs e)
    {
        Response.Write("<script>window.print()</script>");
    }
     
    //protected void btnback(object s, EventArgs e)
    //{
    //    Response.Redirect("home.aspx"); ;
    //}

}
