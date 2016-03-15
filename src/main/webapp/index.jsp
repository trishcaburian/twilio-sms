<%-- 
    Document   : index
    Created on : Mar 6, 2016, 8:06:25 PM
    Author     : yla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="TwilioServlet">
			<p>
            <input name="your_number" id="your_number" type="text" value="" placeholder="Enter your Twilio phone number here">
            <p>
            <input name="sendto" id="sendto" type="text" value="" placeholder="Enter phone number here">
            </p>
            <p>
            <textarea id="smsmsg" name="smsmsg" placeholder="Enter message here"></textarea>
            </p>
            <input type="submit" value="Send!">
        </form>
    </body>
</html>
