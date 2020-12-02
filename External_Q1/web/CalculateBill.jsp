<%-- 
    Document   : CalculateBill
    Created on : Dec 2, 2020, 12:44:31 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Bill</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <% 
            String ItemName=request.getParameter("ItemName");
            String Price=request.getParameter("Price");
            String Quantity=request.getParameter("Quantity");
            float Price_F = 0f;
            int Quantity_I = 0;
            float FinalPrice = 0f;
            int discount = 0;
            
            try{
                Price_F = Float.parseFloat(Price);
            }
            catch(Exception e)
            {
                Price_F=0f;
            }
            
            try{
                Quantity_I = Integer.parseInt(Quantity);
            }
            catch(Exception e)
            {
                Quantity_I=0;
            }
            
            float grandTotal = Price_F * Quantity_I;
            
            if(grandTotal > 1000)
            {
                float x = grandTotal / 10;
                FinalPrice = grandTotal - x;
                discount = 10;
            }
            else
            {
                float x = grandTotal / 20;
                FinalPrice = grandTotal - x;
                discount = 5;
            }
        %>
        <center class="container">
            <h2 class="text-primary">Bill</h2>
            <table border="5" class="table table-dark">            
                <tbody>
                    <tr>
                        <td>Item Name</td>
                        <td><%=ItemName%></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><%=Price_F%></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><%=Quantity_I%></td>
                    </tr>
                    <tr>
                        <td>Grand Total</td>
                        <td><%=grandTotal%></td>
                    </tr>
                    <tr>
                        <td>Discount</td>
                        <td><%=discount%>%</td>
                    </tr>
                    <tr>
                        <td>Final Price</td>
                        <td><%=FinalPrice%></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><a href="index.jsp">Try Again</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </body>
</html>
