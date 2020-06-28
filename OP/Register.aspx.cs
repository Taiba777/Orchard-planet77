using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakwas
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                  //  ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                  //string connetionString;
                  //connetionString = @"Data Source = DESKTOP-KQISEMS; Initial Catalog = plant; Integrated Security = True";
                  //con = new SqlConnection(connetionString);
               }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // con.open()
               // String query = "insert into Register (Name,User_Name,Password,Confirm_Password,Phone,CNIC) values (@Name, @User_Name,@Password,@Confirm_Password,@Phone,@CNIC)";

               // command = new SqlCommand(query, cnn);
               // command.Parameters.AddWithValue("@Name", TextBox5.Text);
               // command.Parameters.AddWithValue("@User_Name", TextBox1.Text);
               // command.Parameters.AddWithValue("@Password", TextBox2.Text);
               // command.Parameters.AddWithValue("@Confirm_Password", TextBox3.Text);
               // command.Parameters.AddWithValue("@Phone", TextBox4.Text);
               // command.Parameters.AddWithValue("@CNIC", TextBox6.Text);
               // command.ExecuteNonQuery();

               //con.Close();

               // Server.Transfer("login.aspx");
        }
    }
}