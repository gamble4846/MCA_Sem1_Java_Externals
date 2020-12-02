<%-- 
    Document   : index
    Created on : Dec 2, 2020, 12:58:36 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <br>
            <br>
            <table border="5" class="table table-dark">            
                <tbody>
                    <tr>
                        <td colspan="3" ><h2 align="center" class="text-success">Welcome</h2></td>
                    </tr>
                    <tr>
                        <td align="center"><a href="InsertBook.jsp">Insert Book Details</a></td>
                        <td align="center"><a href="ViewAllBooks.jsp">View All Books</a></td>
                        <td align="center"><a href="ViewHighest.jsp">Display Book With Highest Price</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
