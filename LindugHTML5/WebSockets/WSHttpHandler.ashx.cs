using System.Web;
using Microsoft.Web.WebSockets;

namespace LindugHTML5.WebSockets
{
    /// <summary>
    /// Summary description for WSHttpHandler
    /// </summary>
    public class WsHttpHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.IsWebSocketRequest)
            {
                context.AcceptWebSocketRequest(new ChatWebSocketHandler());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}