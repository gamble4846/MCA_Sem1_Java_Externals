<%-- 
    Document   : SendToDataBase
    Created on : Dec 2, 2020, 1:06:48 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send To DataBase</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/externals", "root", "");
            Statement st=cn.createStatement();
            
            String ISSN_Number=request.getParameter("ISSN_Number");
            String Book_Name=request.getParameter("Book_Name");
            String Book_Price=request.getParameter("Book_Price");
            String No_of_Pages=request.getParameter("No_of_Pages");
            
            String qry="insert into books(ISSN_Number,Book_Name,Book_Price,No_of_Pages) values('"+ISSN_Number+"' , '"+Book_Name+"' , '"+Book_Price+"', '"+No_of_Pages+"')";
            
            int no=0;
            
            try
            {
                no = st.executeUpdate(qry);
            }
            catch(Exception e)
            {
                RequestDispatcher disp=request.getRequestDispatcher("Error.jsp?exception="+e);
                disp.forward(request, response);
            }
            
            if(no>0)
            {
                RequestDispatcher disp=request.getRequestDispatcher("index.jsp");
                disp.forward(request, response);
            }
            else
            {
                out.println("An error occured!!");
            }
        %>
    </body>
</html>
