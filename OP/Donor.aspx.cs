using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace bakwas
{
    public partial class Donor : System.Web.UI.Page
    {
        public SqlCommand command;
        public SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string connetionString;
            connetionString = @"Data Source = DESKTOP-KQISEMS\SQLEXPRESS; Initial Catalog = plant; Integrated Security = True";
            cnn = new SqlConnection(connetionString);
            if (!IsPostBack)
            {
                RepeterData();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                cnn.Open();
                String query = "insert into Donr (Activity_Name,User_Name,No_of_plant,Catogary,Post_Date) values (@Activity_Name,@User_Name,@No_of_plant,@Catogary,@Post_Date)";

                command = new SqlCommand(query, cnn);
                command.Parameters.AddWithValue("@Activity_Name", TextBox1.Text);
                command.Parameters.AddWithValue("@User_Name", TextBox4.Text);
                command.Parameters.AddWithValue("@No_of_plant", TextBox2.Text);
                command.Parameters.AddWithValue("@Catogary", TextBox3.Text);
                command.Parameters.Add("@Post_Date", SqlDbType.DateTime).Value = DateTime.Now.Date;

                command.ExecuteNonQuery();
                cnn.Close();
                TextBox1.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                RepeterData();



            }

            catch (Exception )
            {
              //  Response.Write("<script>alert('Activity_Name should be unique')</script>");
            }

            
        }

        public void RepeterData()
        {
            cnn.Open();
            command = new SqlCommand("Select * from Donr Order By Post_Date desc", cnn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(ds);
            RepterDetails.DataSource = ds;
            RepterDetails.DataBind();
        }


    }
} 
        

