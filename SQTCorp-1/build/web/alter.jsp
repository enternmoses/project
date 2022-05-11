
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="images/logo.png" />
        <title>SQT Corp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
</head>
<body>
        <h1>Product</h1><br><br>
        <form action="comfirmAlter" method="post">
        <label>Code:</label>
        <input type="text" name="code" value="${p.code}" required readonly><br><br>
        <label>Name:</label>
        <input type="text" name="name" value="${p.name}" required><br><br>
        <label>Image:</label>
        <input type="text" name="image" value="${p.image}" required><br><br>
        <label>Price:</label>
        <input type="text" name="price" value="${p.price}" required><br><br>
        <label>Brand:</label>
        <select name="brand" value="${p.brand}">
            <option value="OLYM PIANUS">OLYM PIANUS</option>
            <option value="OGIVAL">OGIVAL</option>
            <option value="ORIENT">ORIENT</option>
            <option value="SEIKO">SEIKO</option>
            <option value="accessory">accessory</option>
        </select> <br><br>
        <label>Sex:</label>
        <select name="sex" value="${p.sex}">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Unisex">Unisex</option>
            <option value="Null">Null</option>
        </select><br><br>
            <input type="submit" value="Update Product">
        </form><br>
        <form action="homeSeller.jsp" method="post">
            <input type="submit" value="Back">
        </form>
    </body>
</html>