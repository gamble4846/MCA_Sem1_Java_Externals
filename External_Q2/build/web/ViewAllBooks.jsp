<%-- 
    Document   : ViewAllBooks
    Created on : Dec 2, 2020, 1:14:03 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Books</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/externals", "root", "");
            Statement st=cn.createStatement();
            String qry="select * from books";
            ResultSet rs=st.executeQuery(qry);
            int i = 0;
        %>
        
        <center class="container">
            <h2 class="text-primary">View All Books</h2>
                <table border="5" class="table table-dark">
                    <thead>
                        <tr>
                            <th>Index No.</th>
                            <th>ISSN Number</th>
                            <th>Book Name</th>
                            <th>Book Price</th>
                            <th>No of Pages</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        while(rs.next())
                        {
                            String ISSN_Number=rs.getString(1);
                            String Book_Name=rs.getString(2);
                            String Book_Price=rs.getString(3);
                            String No_of_Pages=rs.getString(4); 
                            i = i+1;
                        %>

                        <tr>
                            <td><%=i%></td>
                            <td><%=ISSN_Number%></td>
                            <td><%=Book_Name%></td>
                            <td><%=Book_Price%></td>
                            <td><%=No_of_Pages%></td>
                        </tr>

                        <%   
                             }
                        %>
                        <tr>
                            <td colspan = "5">
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
