using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Configuration;

namespace bakwas
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public void Getdata()
        {
            string connetionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            List<mapdata> mapdatas = new List<mapdata>();
            using (SqlConnection con = new SqlConnection(connetionString))
            {
                SqlCommand Cmd = new SqlCommand("SELECT * FROM landowner UNION ALL SELECT * FROM ld  ", con);
                con.Open();
                SqlDataReader reader = Cmd.ExecuteReader();
         
                while (reader.Read())
                {
                    mapdata mdata = new mapdata();
                    mdata.Activity_Name = reader["Activity_Name"].ToString();
                    mdata.User_Name = reader["User_Name"].ToString();
                    mdata.City = reader["City"].ToString();
                    mdata.Address = reader["Address"].ToString();
                    mdata.Latitude = (float)reader.GetDouble(4);
                    mdata.Longitude = (float)reader.GetDouble(5);
                    mapdatas.Add(mdata);


                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(mapdatas));
        }

    }


}