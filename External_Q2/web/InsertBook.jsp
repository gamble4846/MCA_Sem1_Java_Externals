<%-- 
    Document   : InsertBook
    Created on : Dec 2, 2020, 1:02:10 PM
    Author     : rohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert Book</title>
    </head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <center class="container">
            <h2 class="text-primary">Insert Book</h2>
                <table border="5" class="table table-dark">            
                    <tbody>
                        <form action="SendToDataBase.jsp">
                        <tr>
                            <td class="form-group">
                                <label for="ISSN_Number">ISSN Number</label>
                                <input class="form-control" type="text" name="ISSN_Number" value="" id="StudID" placeholder="Enter ISSN Number"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="Book_Name">Book Name</label>
                                <input class="form-control" type="text" name="Book_Name" value="" id="StudID" placeholder="Enter Book Name"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="Book_Price">Book Price</label>
                                <input class="form-control" type="text" name="Book_Price" value="" id="StudID" placeholder="Enter Book Price"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-group">
                                <label for="No_of_Pages">No of Pages</label>
                                <input class="form-control" type="text" name="No_of_Pages" value="" id="StudID" placeholder="Enter No of Pages"/>
                            </td>
                        </tr>
                        
                        <tr><td colspan="3" align="center"><input class="btn btn-primary form-control" type="submit" value="Insert" /></td></tr>
                        </form>
                        <tr>
                            <td colspan="3" align="center">
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
