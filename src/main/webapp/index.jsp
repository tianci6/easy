<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet"  href="css/style1.css">
    <link rel="stylesheet"  href="css/style_slide.css">
    <title>Home Page</title>

</head>

<body>

<header class="header1">
    <a href="index.html">
        <img src="imgs/flc_design2022120287111.png">
    </a>
    <nav class="menu">
        <ul>
            <li><a href="index.html" target="_blank" class="home-button">Home</a></li>
            <li><a href="Announcement.html" target="_blank">Announcement</a></li>
            <li><a href="request.jsp" target="_blank">Ticket</a></li>
            <li><a href="/easy/selectAllServlet">Status</a></li>
            <li><a href="Contact.html" target="_blank">Contact</a></li>
        </ul>
    </nav>
</header>

<section class="container">
    <!--image slider start-->
    <div class="slider">
        <div class="slides">
            <!--radio buttons start-->
            <input type="radio" name="radio-btn" id="radio1">
            <input type="radio" name="radio-btn" id="radio2">
            <input type="radio" name="radio-btn" id="radio3">
            <input type="radio" name="radio-btn" id="radio4">
            <!--radio buttons end-->
            <!--slide images start-->
            <div class="slide first">
                <img src="imgs/info1.jpg" alt="">
            </div>
            <div class="slide">
                <img src="imgs/info2.jpg" alt="">
            </div>
            <div class="slide">
                <img src="imgs/info3.jpg" alt="">
            </div>
            <div class="slide">
                <img src="imgs/info4.jpg" alt="">
            </div>
            <!--slide images end-->
            <!--automatic navigation start-->
            <div class="navigation-auto">
                <div class="auto-btn1"></div>
                <div class="auto-btn2"></div>
                <div class="auto-btn3"></div>
                <div class="auto-btn4"></div>
            </div>
            <!--automatic navigation end-->
        </div>
        <!--manual navigation start-->
        <div class="navigation-manual">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>
        <!--manual navigation end-->
    </div>
    <!--image slider end-->
</section>


<section class="sec_event">
    <div class="section2">

        <div class="row">
            <div class="col">
                <img src="imgs/mail.gif" >
                <h4 class="event_h4">Request Ticket</h4>
                <p>Request a new ticket for broken things and get immediate responses.</p>
            </div>


            <div class="col" >
                <a href="check.jsp" style="display:block" >
                <img src="imgs/packaging-for-delivery.gif">

                <h4 class="event_h4">Check Ticket</h4>
                <p>Check your ticket processing status.</p>
                </a>

            </div>

        </div>

    </div>
</section>


<!--
<div class="div1" >

    <div class="div1-1">
        <p>Request Ticket</p>
    </div>



    <a class="a-div1-2" href="Request.html" target="_blank">
        <div class="div1-2">
            <p>Click Now</p>
        </div>
    </a>



</div>

<div class="div2">
    <div class="div2-1">
        <p>Check Status</p>
    </div>

    <a class="a-div2-2" href="https://facebook.com" target="_blank">
        <div class="div2-2">
            <p>Click Now</p>
        </div>
    </a>

</div>
-->




<footer >
    <p id="f1">
        Contact Us
    </p>
    <p id="f2">
        &#174; Lim Jing Chun
    </p>

    <p>
        Phone Number: 011-12345678
    </p>

</footer>

</body>

<script type="text/javascript">
    var counter = 1;
    setInterval(function(){
        document.getElementById('radio' + counter).checked = true;
        counter++;
        if(counter > 4){
            counter = 1;
        }
    }, 5000);
</script>

</html>
