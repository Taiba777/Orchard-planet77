using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace bakwas
{
    public class webapiconf
    {
        public static void Register(HttpConfiguration config)
        {

            config.MapHttpAttributeRoutes();

            //config.Routes.MapHttpRoute(
            //name: "Values",
            //routeTemplate: "api/Values/{id}",
            //defaults: new { controller = "Values", id = RouteParameter.Optional }
            //);

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}