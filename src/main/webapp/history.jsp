<%@page import="nl.hu.sie.bep.friendspammer.MongoSaver" %>
<%@page import="nl.hu.sie.bep.friendspammer.EmailDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Al verstuurde berichten!</title>
</head>
<body>
<p>Alle verstuurde berichten</p>
<table border="1">
    <thead>
    <tr>
        <td>Aan:</td>
        <td>Van:</td>
        <td>Onderwerp:</td>
        <td>Text:</td>
        <td>HTML:</td>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<EmailDTO> emails = MongoSaver.getAllEmails();
        for(EmailDTO email: emails) {
    %>
    <tr>
        <td><%=email.getTo() %>
        </td>
        <td><%=email.getFrom() %>
        </td>
        <td><%=email.getSubject() %>
        </td>
        <td><%=email.getText() %>
        </td>
        <td><%=email.getAsHtml() %>
        </td>
    </tr>
        <%
            }
        %>
    </tbody>
</table>
</body>
</html>