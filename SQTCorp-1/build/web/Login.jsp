<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="styles/login.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="images/logo.png" />
        <title>SQT Corp</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>

                <input name="user"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">

                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <form action="register" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                <input name="name" type="text" id="user-real-name" class="form-control" placeholder="Name" required="" autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                

                <select name="role" id="role">
                    <option value="buyer">Buyer</option>
                    <option value="seller">Seller</option>
                </select>
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>
            <!-- Messenger Plugin chat Code -->
            <div id="fb-root"></div>

            <!-- Your Plugin chat code -->
            <div id="fb-customer-chat" class="fb-customerchat">
            </div>

            <div class="zalo-chat-widget" data-oaid="579745863508352884" data-welcome-message="R?t vui khi ???c h? tr? b?n!" data-autopopup="1" data-width="300" data-height="500"></div>

            <script src="https://sp.zalo.me/plugins/sdk.js"></script>

            <script>
                var chatbox = document.getElementById('fb-customer-chat');
                chatbox.setAttribute("page_id", "106757352027882");
                chatbox.setAttribute("attribution", "biz_inbox");
            </script>

            <!-- Your SDK code -->
            <script>
                window.fbAsyncInit = function () {
                    FB.init({
                        xfbml: true,
                        version: 'v13.0'
                    });
                };

                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id))
                        return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
                function toggleResetPswd(e) {
                    e.preventDefault();
                    $('#logreg-forms .form-signin').toggle() // display:block or none
                    $('#logreg-forms .form-reset').toggle() // display:block or none
                }

                function toggleSignUp(e) {
                    e.preventDefault();
                    $('#logreg-forms .form-signin').toggle(); // display:block or none
                    $('#logreg-forms .form-signup').toggle(); // display:block or none
                }

                $(() => {
                    // Login Register Form
                    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                    $('#logreg-forms #btn-signup').click(toggleSignUp);
                    $('#logreg-forms #cancel_signup').click(toggleSignUp);
                })
        </script>
    </body>
</html>