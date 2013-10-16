using System;
using System.ServiceModel.Activation;
using System.Web.Routing;
using LindugHTML5.WebSockets;

namespace LindugHTML5
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Register the default hubs route: ~/signalr
            RouteTable.Routes.MapHubs();

        }
    }
}