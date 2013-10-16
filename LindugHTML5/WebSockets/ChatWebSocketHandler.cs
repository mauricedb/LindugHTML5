using Microsoft.Web.WebSockets;

namespace LindugHTML5.WebSockets
{
    public class ChatWebSocketHandler : WebSocketHandler
    {
        private static WebSocketCollection clients = new WebSocketCollection();

        public override void OnOpen()
        {
            clients.Add(this);
        }

        public override void OnMessage(string message)
        {
            clients.Broadcast( message);
        }

        public override void OnClose()
        {
            clients.Remove(this);
        }
    }
}