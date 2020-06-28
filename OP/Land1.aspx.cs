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
    public partial class Land1 : System.Web.UI.Page
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

        protected void Butt1_Click(object sender, EventArgs e)
        {
            try
            {
                //  cnn.Open();

                //String quer = "(SELECT *from landowner where Latitude='" + TextBox3.Text + "' and Longitude='" + TextBox4.Text + "')";

                //command = new SqlCommand(quer, cnn);
                //SqlDataAdapter da = new SqlDataAdapter(command);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    Response.Write("<script>alert('Specify Area latitude and longitude')</script>");

                //}
                //else

                {
                    cnn.Open();
                    String query = "insert into ld (Activity_Name,User_Name,City,Address,Latitude,Longitude,Plant_Require,Days_Require,Post_Date) values (@Activity_Name,@User_Name,@City, @Address,@Latitude,@Longitude,@Plant_Require,@Days_Require,@date)";

                    command = new SqlCommand(query, cnn);
                    command.Parameters.AddWithValue("@Activity_Name", TextBox5.Text);
                    command.Parameters.AddWithValue("@User_Name", TextBox6.Text);
                    command.Parameters.AddWithValue("@City", TextBox1.Text);
                    command.Parameters.AddWithValue("@Address", TextBox2.Text);
                    command.Parameters.AddWithValue("@Latitude", TextBox3.Text);
                    command.Parameters.AddWithValue("@Longitude", TextBox4.Text);
                    command.Parameters.AddWithValue("@Plant_Require", TextBox7.Text);
                    command.Parameters.AddWithValue("@Days_Require", TextBox8.Text);
                    //command.Parameters.AddWithValue("@date",  DateTime.Now.Date);
                    command.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now.Date;
                    command.ExecuteNonQuery();
                    cnn.Close();
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                    TextBox8.Text = string.Empty;
                    RepeterData();
                 



                   

                }

            }
            

            catch (Exception )
            {
                Response.Write("<script>alert('Activity_Name should be unique')</script>");
              

            }


        }
        public void RepeterData()
        {
            cnn.Open();
            command = new SqlCommand("Select * from ld Order By Post_Date desc", cnn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(ds);
            RepterDetails.DataSource = ds;
            RepterDetails.DataBind();
        }

    }
}
    