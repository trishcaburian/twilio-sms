<%-- 
    Document   : BD0
    Created on : Feb 7, 2016, 9:07:58 PM
    Author     : nievabri
--%>
<%@page import="Servlet.Account"%>
<%
    Account account = (Account) session.getAttribute("accountdetails");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Performance Test</title>
    </head>
    <body>
        <h2> E-banking </h2>
        <br> <h2> Hello, <% out.print(account.getFullname());%></h2>
        <h3> My Account </h3>
        <table style="width:100%">
            <tr>
                <td>Account No.</td>
                <td>Currency</td>
                <td>Current Balance</td>
                <td>Available Balance</td>
            </tr>
            <tr>
                <td> <% out.print(account.getAccountno());%>  </td>
                <td> <% out.print(account.getCurrency());%> </td>
                <td> <% out.print(account.getCurrentbalance());%> </td>
                <td> <% out.print(account.getAvailablebalance());%> </td>
            </tr>
        </table>
		<br>
		<a href="LogoutServlet">Logout</a> 
    </body>
</html>
