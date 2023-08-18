using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace crudforsearch
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=pawan;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Studentinfo_tab Values ('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully Inserted');", true);
            LoadRecord();
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Studentinfo_tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            ////GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update Studentinfo_tab set StudentName = '" + TextBox2.Text + "', Address = '" + DropDownList1.SelectedValue + "', Age = '" + double.Parse(TextBox3.Text) + "',Contact = '" + TextBox4.Text + "' where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully updated');", true);
            LoadRecord();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete Studentinfo_tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert ('successfully deleted');", true);
            LoadRecord();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Studentinfo_tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Studentinfo_tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
                using (SqlDataAdapter sda = new SqlDataAdapter(comm))
                {
                    //Response.Redirect("showdata.aspx.GridView1=Show");              
                    TextBox2.Text = r.GetValue(1).ToString();
                    DropDownList1.SelectedValue = r.GetValue(2).ToString();
                    TextBox3.Text = r.GetValue(3).ToString();
                    TextBox4.Text = r.GetValue(4).ToString();
                }

            con.Close();
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=192.168.0.109;Initial Catalog=pawan;Integrated Security=True");
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("select * from Studentinfo_tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            Session["DataSet1"] = ds;
            Response.Redirect("showdata.aspx");
            {
                Server.Transfer("showdata.aspx");
            }
            con.Close();
        }
    }
}

                        
                      
                
    

