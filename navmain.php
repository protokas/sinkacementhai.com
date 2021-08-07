<!DOCTYPE html>
<html lang="en">


<!-- Masthead-->
<header class="mastheadb">
</header>

<body id="page-top">
    <!-- Messenger ปลั๊กอินแชท Code -->
    <div id="fb-root"></div>

    <!-- Your ปลั๊กอินแชท code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "101768641949579");
      chatbox.setAttribute("attribution", "biz_inbox");

      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v11.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
     <!-- Navigation-->
     <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger " href="index.php">SCG Home WARIN</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="service.php">Our Service</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="promotion.php">Promotion</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="product.php">Product</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="ideas.php">Ideas</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="contact.php">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://mv.co.th/mvl/default.aspx">Tracking</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
</body>

</html>