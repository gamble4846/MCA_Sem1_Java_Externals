<%-- 
    Document   : ViewHighest
    Created on : Dec 2, 2020, 1:19:51 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Highest Priced Book</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/externals", "root", "");
            Statement st=cn.createStatement();
            String qry="select * from books order by Book_Price DESC";
            ResultSet rs=st.executeQuery(qry);  
            rs.next();
        %>
        <center class="container">
            <h2 class="text-primary">Highest Priced Book</h2>
                <table border="5" class="table table-dark">
                    <tbody>
                        <% 
                            String ISSN_Number=rs.getString(1);
                            String Book_Name=rs.getString(2);
                            String Book_Price=rs.getString(3);
                            String No_of_Pages=rs.getString(4);                             
                        %>
                        <tr>
                            <td>ISSN Number</td>
                            <td><%=ISSN_Number%></td>
                        </tr>
                        <tr>
                            <td>Book Name</td>
                            <td><%=Book_Name%></td>
                        </tr>
                        <tr>
                            <td>Book Price</td>
                            <td><%=Book_Price%></td>
                        </tr>
                        <tr>
                            <td>No of Pages</td>
                            <td><%=No_of_Pages%></td>
                        </tr>
                        <tr>
                            <td colspan = "2">
                                <form action="index.jsp">
                                    <input class="btn btn-danger form-control" type="submit" value="Back"/>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
        </center>
    </body>
</html>
