<%-- 
    Document   : index
    Created on : Dec 2, 2020, 12:38:05 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <h2 class="text-primary">Food</h2>
            <form action="CalculateBill.jsp">
                <table border="5" class="table table-dark">            
                    <tbody>
                        <tr>
                            <td class="form-group">
                                <label for="ItemName">Item Name</label>
                                <input class="form-control" type="text" name="ItemName" value="" id="StudID" placeholder="Enter ItemName"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="Price">Price</label>
                                <input class="form-control" type="text" name="Price" value="" id="StudID" placeholder="Enter Price"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="Quantity">Quantity</label>
                                <input class="form-control" type="text" name="Quantity" value="" id="StudID" placeholder="Enter Quantity"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><input class="btn btn-primary form-control" type="submit" value="Submit" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </center>
    </body>
</html>
