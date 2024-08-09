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


public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    int a = 0;



    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();


        if (!(IsPostBack))
        {

            da = new SqlDataAdapter("select city_name from city", con);
            da.Fill(dt);
            d1.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                d1.Items.Add(dt.Rows[i]["city_name"].ToString());
            }
        }
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        da=new SqlDataAdapter("select * from register where email='"+email.Text+"'",con);
        dt=new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            a = 1;
        }
        else
        {
            a=0;
        }
        if(a==0)
        {
            cmd = new SqlCommand("insert into register values('" + unm.Text + "','" + addr.Text + "','" + d1.SelectedItem.ToString() + "','" + email.Text + "','"+b+"',"+no.Text+",'"+pwd.Text+"')", con);
            cmd.ExecuteNonQuery();
            Response.Write("saved");
            Response.Redirect("home.aspx");

        }
        else 
            
            {
                string h = "emailid is already exist give new id";

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + h + "')", true);


                

            }
        }
    static string b;
    protected void gen1_CheckedChanged(object sender, EventArgs e)
    {
        b = "male";
    }
    protected void gen2_CheckedChanged(object sender, EventArgs e)
    {
        b = "female";
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        unm.Text = "";
        addr.Text = "";
        
        email.Text = "";
        no.Text = "";
        pwd.Text = "";
    }
}

