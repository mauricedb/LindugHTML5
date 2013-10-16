using Microsoft.AspNet.SignalR;

namespace LindugHTML5.SignalR
{
    public class ChatHub : Hub
    {
        public void Send(string message)
        {
            Clients.Others.Broadcast(message);
        }
    }
}