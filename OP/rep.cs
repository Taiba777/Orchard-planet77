using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace bakwas
{
    public class rep
    {
  
            private SqlConnection con;


            private void connection()
            {
                string constr = ConfigurationManager.ConnectionStrings["conStr"].ToString();
                con = new SqlConnection(constr);


            }

            public string AddEmployees(reg Emp)
            {
                connection();

                string query = "insert into Register (Name,User_Name,Password,Confirm_Password,Phone,CNIC) values (@Name, @User_Name,@Password,@Confirm_Password,@Phone,@CNIC)";


                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@Name", Emp.Name);
                com.Parameters.AddWithValue("@User_Name", Emp.User_Name);
                com.Parameters.AddWithValue("@Password", Emp.Password);
                com.Parameters.AddWithValue("@Confirm_Password", Emp.Confirm_Password);
                com.Parameters.AddWithValue("@Phone", Emp.Phone);
                com.Parameters.AddWithValue("@CNIC", Emp.CNIC);
                con.Open();
                int i = com.ExecuteNonQuery();
                con.Close();
                if (i >= 1)
                {
                    return "Registered Successfully";

                }
                else
                {
                    return "User_Name Already Exist";

                }
            }
        }
    }
