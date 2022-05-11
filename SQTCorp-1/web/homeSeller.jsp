<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="modal.Database"%>
<%@page import="modal.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="shortcut icon" href="images/logo.png" />
        <title>SQT Corp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <style>
            table {
                border: 1px solid black;
                border-collapse: collapse;
                width: 50em;
            }
            th, td {
                border: 1px solid black;
                text-align: left;
                padding: .5em;
            }
        </style>
    </head>
    <body>
    
        <h1>List Product</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Brand</th>
                <th>Sex</th>
            </tr>

            <%
                String pattern = "###,###.##";
                
                DecimalFormat decimalFormat = new DecimalFormat(pattern);
                ArrayList<Product> list = Database.getProduct();
            for(int i=0; i<list.size(); i++){ %>
                <tr>
                    <td name='code'> <%= list.get(i).getCode() %></td>
                    <td name='name'><%= list.get(i).getName() %></td>
                    <td name='image'> <img style="width: 30%;" src=<%= list.get(i).getImage() %> alt=""/></td>
                    <td name='price'><%=decimalFormat.format(list.get(i).getPrice())+ "đ"%></td>
                    <td name='brand'><%= list.get(i).getBrand() %></td>
                    <td name='sex'><%= list.get(i).getSex() %></td>
                    <td>
                        <form action="alter" method="get">

                            <input type="hidden" name="action" value="edit">
                            <input type="hidden" name="productCode" value=<%=list.get(i).getCode() %>>
                            <input type="hidden" name="name" value=<%=list.get(i).getName() %>>
                            <input type="hidden" name="image" value=<%=list.get(i).getImage() %>>
                            <input type="hidden" name="price" value=<%=list.get(i).getPrice() %>>
                            <input type="hidden" name="brand" value=<%=list.get(i).getBrand() %>>
                            <input type="hidden" name="sex" value=<%=list.get(i).getSex() %>>
                            <input type="submit" value="edit">
                        </form>
                    </td>
                    <td>
                        <form action="alter" method="get">
                            <input type="hidden" name="action" value="del">
                            <input type="hidden" name="productCode" value=<%=list.get(i).getCode() %>>
                            <input type="submit" value="del">
                        </form>
                    </td>
                </tr>
                <% } %>

        </table>

            <br><br>
            <form action="alter" method="get">
                <input type="hidden" name="action" value="add">
                <input type="submit" value="add">
            </form>

    </body> 
</html>