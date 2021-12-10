using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insert_view_Asp_net
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string query, constr;
        public SqlConnection con;

        public void connection()
        {

            constr = ConfigurationManager.ConnectionStrings["studentEntryView1"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
            connection();
            query = "TestProcedure";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Action", "View").ToString();
            com.Parameters.AddWithValue("@fname", "").ToString();
            com.Parameters.AddWithValue("@Mname", "").ToString();
            com.Parameters.AddWithValue("@Lname", "").ToString();


            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            connection();
            query = "TestProcedure";

            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.AddWithValue("@Action", "Insert").ToString();
            com.Parameters.AddWithValue("@FName", TextBox1.Text.ToString());
            com.Parameters.AddWithValue("@Mname ", TextBox2.Text.ToString());
            com.Parameters.AddWithValue("@LName ", TextBox3.Text.ToString());

            com.ExecuteNonQuery();

            Label4.Visible = true;
            Label4.Text = "Records are Submmited Successfully";
        }
    }
}