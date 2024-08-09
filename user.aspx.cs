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

public partial class user : System.Web.UI.Page
{
    DataTable dt;
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlConnection con;
    DataSet ds = new DataSet();
    string s;


    DataTable dtcart;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        if (Session["username"] != null)
        {


            int id = int.Parse(Session["fid"].ToString());
            da = new SqlDataAdapter("select * from food_items where food_id=" + id, con);


            da.Fill(ds, "food_items");
            dt = ds.Tables[0];

            name.Text = dt.Rows[0][2].ToString();
            Image1.ImageUrl = dt.Rows[0][4].ToString();
            price.Text = dt.Rows[0][3].ToString();
            Label3.Text = dt.Rows[0][1].ToString();



        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        Response.Redirect("foods.aspx?mn=" + Label3.Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcart.aspx");
    }


    static int cartid = 0;

    protected void Button3_Click(object sender, EventArgs e)
    {
        s = Session.SessionID.ToString();
        string unm = Session["username"].ToString();
        string date = DateTime.Now.ToShortDateString();
        int total = int.Parse(txtqty.Text) * int.Parse(price.Text);


        da = new SqlDataAdapter("select max(cart_id) from place_order where session_id!='" + s + "'", con);

        DataTable dt1 = new DataTable();
        da.Fill(dt1);

        // cartid   = int.Parse( dt1.Rows[0]["cart_id"].ToString()+1);
        try
        {
            cartid = int.Parse(dt1.Rows[0][0].ToString()) + 1;
        }
        catch (Exception ex)
        {
            cartid = 1;
        }

        Session["cart_id"] = cartid.ToString();
        string ins = "insert into cart values(" + cartid + ",'" + s + "','" + unm + "'," + Convert.ToInt32(Session["fid"]) + ",'" + name.Text + "'," + price.Text + "," + txtqty.Text + "," + total + ",'" + date + "')";
        cmd = new SqlCommand(ins, con);
        cmd.ExecuteNonQuery();
        txtqty.Text = "";
    }
}