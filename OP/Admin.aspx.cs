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
    public partial class Admin : System.Web.UI.Page
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
                String query = "insert into Admn (Activity_Name,User_Name,Post_Date) values (@Activity_Name,@User_Name,@Post_Date)";

                command = new SqlCommand(query, cnn);
                command.Parameters.AddWithValue("@Activity_Name", TextBox1.Text);
                command.Parameters.AddWithValue("@User_Name", TextBox2.Text);
                command.Parameters.Add("@Post_date", SqlDbType.DateTime).Value = DateTime.Now.Date;


                command.ExecuteNonQuery();
                cnn.Close();
                RepeterData();



            }

            catch (Exception)
            {
                Response.Write("<script>alert('Activity_Name should be unique')</script>");
            }
         
        }
            public void RepeterData()
            {
                cnn.Open();
                command = new SqlCommand("Select * from Admn Order By Post_Date desc", cnn);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(command);
                da.Fill(ds);
                RepterDetails.DataSource = ds;
                RepterDetails.DataBind();
            }
        }
    }
