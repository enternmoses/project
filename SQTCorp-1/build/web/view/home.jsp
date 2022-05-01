<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>SQT Corp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href ="styles/main.css" type="text/css"/>
        <style>
            table, th, td {
              border:1px solid black;
            }
        </style>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="http://localhost:8080/SQTCorp-1/"><img src ="images/logo.png" style="max-width: 190px; display: block; margin-left: auto; margin-right: auto;"></a>
            </div>
            <div class="menu">
                <li><a href="http://localhost:8080/SQTCorp-1/">Trang chủ</a></li>
                <li><a href="">Đồng hồ nam</a></li>
                <li><a href="">Đồng hồ nữ</a></li>
                
                <li><a href="">Thương hiệu <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down" viewBox="0 0 16 16">
                            <path d="M3.204 5h9.592L8 10.481 3.204 5zm-.753.659 4.796 5.48a1 1 0 0 0 1.506 0l4.796-5.48c.566-.647.106-1.659-.753-1.659H3.204a1 1 0 0 0-.753 1.659z"/>
                          </svg></a>
                    
                    <div class ="sub-menu row" style="width: 500px;">
                        <div class="col-sm-4">
                            <a href=""><strong>Đồng hồ OP</strong></a> <br>
                            <a href="">- Đồng hồ Olym Pianus</a><br>
                            <a href="">- Đồng hồ Ogival</a><br>
                        </div>
                        <div class="col-sm-4">
                            <a href=""><strong>Đồng hồ Citizen</strong></a><br>
                            <a href="">- Đồng hồ Orient</a><br>
                            <a href="">- Đồng hồ Seiko</a><br>
                        </div>
                        <div class="col-sm-4">
                            <a href=""><strong>Đồng hồ Đôi</strong></a><br>
                        </div>
                    </div>
                </li>
                <li><a href="">Phụ kiện đồng hồ</a></li>
                <li><a href="">Tin tức</a></li>
                <li><a href="">Liên hệ</a></li>
                
            </div>
            <div class ="others">
                <li><input placeholder="Tìm sản phẩm" type= "text"><i class="fa-solid fa-magnifying-glass"></i></li>
                <li><a class="fa-solid fa-user" href=""></a></li>
                <li><a class="fa-solid fa-cart-shopping" href=""></a></li>
            </div>
        </header>
        <section id ="Slider">
            <div class="aspect-ratio-169">
                <img src="images/slide-1.jpg">
                <img src="images/slide-2.jpg">
                <img src="images/slide-3.jpg">
                <img src="images/slide-4.jpg">
            </div>
            <div class="dot-container">
                <div class="dot active"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </section> <br>
        
        <div>
            <div>
                <img src="images/fs-img.jpg" style="display: block; margin-left: auto; margin-right: auto;">
            </div> <br>
            
            <div>
                <h2 style="width: 100%; text-align: center; border-bottom: 2px solid #000; line-height: 0.1em; margin: 10px 0 20px;">
                    <span style="background:#fff; padding:0 10px; ">Đồng hồ nam</span>
                </h2>
            </div> <br>
            
            <div>
                <h2 style="width: 100%; text-align: center; border-bottom: 2px solid #000; line-height: 0.1em; margin: 10px 0 20px;">
                    <span style="background:#fff; padding:0 10px; ">Đồng hồ nữ</span>
                </h2>
            </div> <br>
            
            <div class="row">
                <div class="col-sm-4 item-inf">
                    <div>
                        <img src="images/icon-shipping.png"  style="max-width: 80px;">
                    </div>
                    <div style="padding-left: 20px;">
                        <span><strong>GIAO HÀNG MIỄN PHÍ</strong></span> <br> <br>
                        <span>Giao hàng miễn phí cho các hóa đơn trên 500.000đ</span>
                    </div>
                </div>
                <div class="col-sm-4 item-inf">
                    <div>
                        <img src="images/icon-refund.png"  style="max-width: 80px;">
                    </div>
                    <div style="padding-left: 20px;">
                        <span><strong>CHÍNH SÁCH HOÀN TIỀN</strong></span> <br> <br>
                        <span>Hoàn lại 100% nếu bạn không hài lòng về chất lượng sản phẩm</span>
                    </div>
                </div>
                <div class="col-sm-4 item-inf">
                    <div>
                        <img src="images/icon-gift.jpg"  style="max-width: 80px;">
                    </div>
                    <div style="padding-left: 20px;">
                        <span><strong>ƯU ĐÃI SẢN PHẨM</strong></span> <br> <br>
                        <span>Giúp người tiêu dùng sở hữu sản phẩm với giá ưu đãi tốt</span>
                    </div>
                </div>
            </div> <br> <br>
            
            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <h2 style="width: 100%; text-align: center; border-bottom: 1px solid #000; line-height: 0.1em; margin: 10px 0 20px;">
                            <span style="background:#fff; padding:0 10px; font-size: 20px;">Tin tức</span>
                        </h2>
                    </div> <br>
                </div>
                <div class="col-sm-6">
                    <div>
                        <h2 style="width: 100%; text-align: center; border-bottom: 1px solid #000; line-height: 0.1em; margin: 10px 0 20px;">
                            <span style="background:#fff; padding:0 10px; font-size: 20px;">Ý kiến khách hàng</span>
                        </h2>
                    </div> <br>
                </div>
            </div>
            
            <div>
                <div >
                    <img src="images/slide-footer.jpg" style="height: 100%;width: 100%;position: absolute;z-index: -1;">
                </div>
                <div class="row" style="padding: 30px;padding-top: 50px;">
                    <div class="col-sm-4 contact">
                        <div style="color: antiquewhite;">
                            <span style="font-size: 25px; font-weight: bold;">Liên hệ</span> <br> <br>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                            </svg>
                            <span>109 Nguyễn Văn Trỗi, Hà Đông, Hà Nội</span><br>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16">
                                <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                                <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                            </svg>
                            <span>(+84) 357000225</span><br>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-mailbox" viewBox="0 0 16 16">
                                <path d="M4 4a3 3 0 0 0-3 3v6h6V7a3 3 0 0 0-3-3zm0-1h8a4 4 0 0 1 4 4v6a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V7a4 4 0 0 1 4-4zm2.646 1A3.99 3.99 0 0 1 8 7v6h7V7a3 3 0 0 0-3-3H6.646z"/>
                                <path d="M11.793 8.5H9v-1h5a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.354-.146l-.853-.854zM5 7c0 .552-.448 0-1 0s-1 .552-1 0a1 1 0 0 1 2 0z"/>
                            </svg>
                            <span>sqtcorp@gmail.com</span>
                        </div>
                    </div>
                    <div class="col-sm-4 contact">
                        <span style="font-size: 25px; font-weight: bold;">Câu hỏi thường gặp</span> <br> <br>
                        <a href=""><span>Hỏi đáp</span></a> <br>
                        <a href=""><span>Liên hệ</span></a> <br>
                        <a href=""><span>Biểu phí giao hàng</span></a> <br>
                        <a href=""><span>Thẻ quà tặng</span></a> <br>
                        <a href=""><span>Danh mục sản phẩm</span></a> <br>
                        <a href=""><span>Kiểm tra đơn hàng</span></a>
                    </div>
                    <div class="col-sm-4 contact">
                        <span style="font-size: 25px; font-weight: bold;">Chính sách</span> <br> <br>
                        <a href=""><span>Chính sách bảo mật</span></a> <br>
                        <a href=""><span>Chính sách vận chuyển</span></a> <br>
                        <a href=""><span>Chính sách bảo hành</span></a> <br>
                        <a href=""><span>Chính sách đổi hàng</span></a> <br>
                        <a href=""><span>Quy định</span></a> <br>
                        <a href=""><span>Quy định thanh toán</span></a>
                    </div>
                    
                </div>
            </div>
            
        </div>
        
        
        <a href=""><img src ="images/messenger.png" style="max-width: 80px;position: fixed; bottom: 30px; right: 30px;"></a>
    </body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <script>
        const header = document.querySelector("header")
        window.addEventListener("scroll",function(){
            x=window.pageYOffset
            if(x>0){
                header.classList.add("sticky")
            }
            else{
                header.classList.remove("sticky")
            }
        })
        
        
        const imgPosition = document.querySelectorAll(".aspect-ratio-169 img")
        const imgContainer = document.querySelector('.aspect-ratio-169')
        const dotItem = document.querySelectorAll(".dot")
        let index = 0
        let imgNumber = imgPosition.length
        //console.log(impPosition)
        imgPosition.forEach(function(image,index){
            image.style.left = index*100 + "%"
            dotItem[index].addEventListener("click",function(){
                slider(index)
            })
        })
        function imgSlide(){
            index++;
            console.log(index)
            if (index>=imgNumber){
                index = 0
            }
            slider(index)   
            
        }
        function slider(index){
            imgContainer.style.left ="-" +index*100 +"%"
            const dotActive=document.querySelector('.active')
            dotActive.classList.remove("active")
            dotItem[index].classList.add("active")
        }
        setInterval(imgSlide,5000)
    </script>
</html>
