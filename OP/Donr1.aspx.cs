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
    public partial class Donr1 : System.Web.UI.Page
    {
        public SqlCommand command;
        public SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                string connetionString;
                connetionString = @"Data Source = DESKTOP-KQISEMS\SQLEXPRESS; Initial Catalog = plant; Integrated Security = True";
                cnn = new SqlConnection(connetionString);
            }
            if (!IsPostBack)
            {
                RepeterrData();
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                String query = "insert into Dnr1 (Activity_Name,User_Name,Address,Plant_Donate,Post_Date) values (@Activity_Name,@User_Name, @Address,@Plant_Donate,@date)";

                command = new SqlCommand(query, cnn);
                command.Parameters.AddWithValue("@Activity_Name", TextBox1.Text);
                command.Parameters.AddWithValue("@User_Name", TextBox5.Text);
                command.Parameters.AddWithValue("@Address", TextBox3.Text);
                command.Parameters.AddWithValue("@Plant_Donate", TextBox4.Text);

                //command.Parameters.AddWithValue("@date",  DateTime.Now.Date);
                command.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Now.Date;
                command.ExecuteNonQuery();
                cnn.Close();
                TextBox5.Text = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                RepeterrData();
                foreach (var item in Page.Controls)
                {
                    if (item is TextBox)
                    {
                        ((TextBox)item).Text = "";
                    }
                }
            }

                     catch (Exception )
            {
                Response.Write("<script>alert('Activity_Name should be unique')</script>");
              

            }
           

        }


        public void RepeterrData()
        {
            cnn.Open();
            command = new SqlCommand("Select * from Dnr1 Order By Post_Date desc", cnn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(command);
            da.Fill(ds);
            RepterDetail.DataSource = ds;
            RepterDetail.DataBind();
        }


    }
}