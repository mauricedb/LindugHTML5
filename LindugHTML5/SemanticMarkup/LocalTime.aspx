<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocalTime.aspx.cs" Inherits="LindugHTML5.SemanticMarkup.LocalTime" %>

<!DOCTYPE html>
<html>
<head>
    <title>LocalTime</title>
</head>
<body>
    <p>
        The current time on the server is: <%= DateTime.Now.ToLongTimeString() %>
        <br />
        The current time in UTC is: <%= DateTime.UtcNow.ToLongTimeString() %>
        <br />
        The current time in the browser is: <time datetime="<%= DateTime.UtcNow.ToString("u") %>" data-format="hh:mm:ss A"></time>
    </p>
    <p>
        Noon on January 1st (UTC) in the browser is: <time datetime="<%= new DateTime(DateTime.UtcNow.Year, 1, 1, 12, 0, 0).ToString("u") %>" data-format="LLLL"></time>
        <br />
        Noon on July 1st (UTC) in the browser is: <time datetime="<%= new DateTime(DateTime.UtcNow.Year, 7, 1, 12, 0, 0).ToString("u") %>" data-format="LLLL"></time>
    </p>
    <p>See <a href="http://momentjs.com/docs/#/displaying/format/">Moment.js</a> for the possible format strings</p>

    <script src="/Scripts/jquery-1.10.2.js"></script>
    <script src="/Scripts/moment.js"></script>
    <script>
        $(function () {

            $("time[data-format]").each(function () {
                var el = $(this);
                var dt = moment(el.attr("datetime"));
                el.text(dt.format(el.data("format")));
            });
        })
    </script>
</body>
</html>
