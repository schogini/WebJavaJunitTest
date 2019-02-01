<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.net.*" %> 
<%
    String hostname, serverAddress;
    hostname = "error";
    serverAddress = "error";
    try {
        InetAddress inetAddress;
        inetAddress = InetAddress.getLocalHost();
        hostname = inetAddress.getHostName();
        serverAddress = inetAddress.toString();
    } catch (UnknownHostException e) {

        e.printStackTrace();
    }
    
    String javahome = System.getenv("JAVA_HOME");
%>
<!DOCTYPE html>
<html>
<body>
<h2>Hello World!</h2>
<h3>Hello from Schogini</h3>
<h2>Current time is <%= LocalDateTime.now() %></h2>
<h2>Host Name of server <%=hostName%></h2>
  <h2>InetAddress: <%=serverAddress %></h2>
  <h2>InetAddress.hostname: <%=hostname %></h2>
<h2>Jhome: <%=javahome %></h2>
</body>
</html>
