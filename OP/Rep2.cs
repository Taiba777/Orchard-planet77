using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace bakwas
{
    public class Rep2
    {
     
     private SqlConnection con;
        private SqlCommand command;


        private void connection()
        {
            string constr = ConfigurationManager.ConnectionStrings["conStr"].ToString();
            con = new SqlConnection(constr);


        }

        public string Checkuser(log Emp)
        {
            connection();


            SqlDataAdapter adapter = new SqlDataAdapter();
            con.Open();
            string query = "(SELECT *from Register where User_Name='" + Emp.User_Name + "' and Password='" + Emp.Password + "')";

            command = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                //  HttpContext.Current.Response.Redirect("Dashboard.aspx", true);
                // string path = Path.Combine(HostingEnvironment.ApplicationPhysicalPath, "Dashboard.aspx");
                // string fileContents = File.ReadAllText(path);

                // File.ReadAllLines("Dashboard.aspx");

                return "valid";





            }
            return "failed";


        }


    }

}


