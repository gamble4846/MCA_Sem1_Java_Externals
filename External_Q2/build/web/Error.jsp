<%-- 
    Document   : Error
    Created on : Dec 2, 2020, 5:19:15 AM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error!!!</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <%
            String Exception=request.getParameter("exception");
        %>
        <center class="container">
            <br>
            <br>
            <table border="5" class="table table-dark">            
                <tbody>
                    <tr>
                        <td class="form-group">
                            <h2 class="text-danger" align="center">Error Processing Your Request</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%=Exception%>
                        </td>
                    </tr>
                    <tr><td align="center"><a href="index.jsp">Try Again</a></td></tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
