<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%
  String hostName=request.getServerName();
%>
<!DOCTYPE html>
<html>
<body>
<h2>Hello World!</h2>
<h3>Hello from Schogini</h3>
<h2>Current time is <%= LocalDateTime.now() %></h2>
<h2>Host Name of server <%=hostName%></h2>
</body>
</html>
