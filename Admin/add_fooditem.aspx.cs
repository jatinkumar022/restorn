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


public partial class add_fooditem : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    string p;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        if(!(IsPostBack))
        {
       
        da= new SqlDataAdapter("select menu_name from menu", con);
        da.Fill(dt);
        DropDownList1.Items.Clear();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList1.Items.Add(dt.Rows[i]["menu_name"].ToString());
        }
        }
    }
    protected void addfood_Click(object sender, EventArgs e)
    {

        p = "~/uploadimg/" + FileUpload1.FileName;
        FileUpload1.SaveAs(MapPath(p));

       
        

        cmd = new SqlCommand("insert into food_items(menu_name,food_name,food_price,food_pic)values('" + DropDownList1.SelectedItem.ToString() + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + p + "')", con);
        cmd.ExecuteNonQuery();
        Label1.Text = "saved";
       GridView1.DataSourceID = "s1";
        GridView1.DataBind();
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
