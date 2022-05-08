<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="controller.Database"%>
<%@page import="modal.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>SQT Corp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href ="../styles/main.css" type="text/css"/>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="http://localhost:8080/SQTCorp-1/"><img src ="../images/logo.png" style="max-width: 190px; display: block; margin-left: auto; margin-right: auto;"></a>
            </div>
            <div class="menu">
                <li><a href="http://localhost:8080/SQTCorp-1/">Trang chủ</a></li>
                <li><a href="maleWatch.jsp">Đồng hồ nam</a></li>
                <li><a href="femaleWatch.jsp">Đồng hồ nữ</a></li>
                
                <li><a href="brand.jsp">Thương hiệu <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down" viewBox="0 0 16 16">
                            <path d="M3.204 5h9.592L8 10.481 3.204 5zm-.753.659 4.796 5.48a1 1 0 0 0 1.506 0l4.796-5.48c.566-.647.106-1.659-.753-1.659H3.204a1 1 0 0 0-.753 1.659z"/>
                          </svg></a>
                    
                    <div class ="sub-menu row" style="width: 500px;">
                        <div class="col-sm-4">
                            <a href="brand/OP.jsp"><strong>Đồng hồ OP</strong></a> <br>
                            <a href="brand/OlymPianus.jsp">- Đồng hồ Olym Pianus</a><br>
                            <a href="brand/Ogival.jsp">- Đồng hồ Ogival</a><br>
                        </div>
                        <div class="col-sm-4">
                            <a href="brand/Citizen.jsp"><strong>Đồng hồ Citizen</strong></a><br>
                            <a href="brand/Orient.jsp">- Đồng hồ Orient</a><br>
                            <a href="brand/Seiko.jsp">- Đồng hồ Seiko</a><br>
                        </div>
                        <div class="col-sm-4">
                            <a href="brand/couple.jsp"><strong>Đồng hồ Đôi</strong></a><br>
                        </div>
                    </div>
                </li>
                <li><a href="accessory.jsp">Phụ kiện đồng hồ</a></li>
                <li><a href="new.jsp">Tin tức</a></li>
                <li><a href="contact.jsp">Liên hệ</a></li>
                
            </div>
            <div class ="others">
                <li><input placeholder="Tìm sản phẩm" type= "text"><i class="fa-solid fa-magnifying-glass"></i></li>
                <li><a class="fa-solid fa-user" href=""></a></li>
                <li><a class="fa-solid fa-cart-shopping" href=""></a></li>
            </div>
        </header>
            
            
        
        
        <a href=""><img src ="../images/messenger.png" style="max-width: 80px;position: fixed; bottom: 30px; right: 30px;"></a>
    </body>
</html>
