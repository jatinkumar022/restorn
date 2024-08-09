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

public partial class checkout : System.Web.UI.Page
{
    DataTable dt,dt1;
    
    SqlCommand cmd,cmd1,cmd2;
    SqlDataAdapter da,d1,d2;
    SqlConnection con;
    DataSet ds = new DataSet();
    static string s = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        da = new SqlDataAdapter("select * from register where username='"+Session["username"].ToString()+"'", con);
        dt = new DataTable();
        da.Fill(ds, "register");
        dt = ds.Tables[0];


        username.Text = dt.Rows[0][1].ToString();
      
        city.Text = dt.Rows[0][3].ToString();
        email.Text = dt.Rows[0][4].ToString();
        mno.Text = dt.Rows[0][6].ToString();

       
       

    }
    string date = DateTime.Now.ToShortDateString();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            cmd = new SqlCommand("insert into checkout values('" + username.Text + "','" + address.Text + "','" + city.Text + "','" + email.Text + "'," + mno.Text + ",'" + s + "','" + ownername.Text + "'," + cardno.Text + ",'" + expdate.Text + "','" + date + "')", con);
            cmd.ExecuteNonQuery();

        }
        else
        {
            cmd = new SqlCommand("insert into checkout(username,address,city,email,mobile_no,pay_method,date) values('" + username.Text + "','" + address.Text + "','" + city.Text + "','" + email.Text + "'," + mno.Text + ",'" + s + "','" + date + "')", con);
            cmd.ExecuteNonQuery();
        }

        d1=new SqlDataAdapter("select * from cart where username='"+Session["username"]+"' and date='"+DateTime.Now.ToShortDateString()+"'",con);
        dt1 = new DataTable();
        d1.Fill(dt1);
        
        for(int i=0;i<dt1.Rows.Count;i++)
        {
           
             cmd1=new SqlCommand("insert into place_order(cart_id,session_id,username,food_id,food_name,price,qty,total,date)values("+dt1.Rows[i]["cart_id"].ToString()+",'"+dt1.Rows[i]["session_id"].ToString()+"','"+dt1.Rows[i]["username"].ToString()+"',"+dt1.Rows[i]["food_id"].ToString()+",'"+dt1.Rows[i]["food_name"].ToString()+"',"+dt1.Rows[i]["price"].ToString()+","+dt1.Rows[i]["qty"].ToString()+","+dt1.Rows[i]["total"].ToString()+",'"+dt1.Rows[i]["date"].ToString()+"')",con);
             cmd1.ExecuteNonQuery();
            
        }
        cmd2=new SqlCommand("delete from cart where username='"+Session["username"].ToString()+"'",con);
        cmd2.ExecuteNonQuery();

        Response.Redirect("bill_print.aspx");

     
       
    }
   
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        s = "credit";
      if (RadioButton1.Checked == true)
       {
           ownername.Enabled = true;
           cardno.Enabled = true;
           expdate.Enabled = true;
       }
       else
       {
           ownername.Enabled = false;
           cardno.Enabled = false;
           expdate.Enabled = false;
       }
     

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        s= "cash";
        if (RadioButton2.Checked == true)
        {
            ownername.Enabled = false;
            cardno.Enabled = false;
            expdate.Enabled = false;
        }
    }
}
