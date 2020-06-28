using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace bakwas
{
    public class EmpController : ApiController
    {

        static rep repository = new rep();


        public string AddEmployees(reg Emp)
        {
            //calling EmpRepository Class Method and storing Repsonse   
            var response = repository.AddEmployees(Emp);
            return response;

        }

        static Rep2 reposit = new Rep2();

        public static object RepterDetails { get; internal set; }

        public string Checkuser(log Emp)
        {
            //calling EmpRepository Class Method and storing Repsonse   
            var response = reposit.Checkuser(Emp);
            return response;



            //}

        }


       

        
    }
}