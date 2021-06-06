<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<!-- Mirrored from www.fiesta14.com/index.php by HTTrack Website Copier/3.x [XR&CO'2008], Sun, 27 Apr 2014 06:54:32 GMT -->
<head>
<meta charset="UTF-8">
<meta name="description" content="Fiesta 2014, the annual fest of Institute of Information Technology and Management (IITM).">
<meta name="keywords" content="Fiesta 2014, Fiesta, IITM, IITM Fest, IITM Annual Fest, IITM 2013">
<meta name="author" content="Raghav Grover">
<meta name="robots" content="index,follow">
<LINK rel="shortcut icon" href="favicon.ico">
<title>Fiesta 2014</title>
<LINK rel="icon" type="image/x-icon" href="favicon.ico">
<LINK rel="stylesheet" type="text/css" href="register.css">
<style>
@font-face {
	font-family: 'rvaturecu';
	src: url('fonts/rvaturecu.eot');
	src: local('☺'), url('fonts/rvaturecu.woff') format('woff'), url('fonts/rvaturecu.ttf') format('truetype'), url('fonts/rvaturecu.svg') format('svg');
	font-weight: normal;
	font-style: normal;
}
body{ background-color: #000000;}
a{color: #ffffff;}

div.register{
position:absolute;
  top:505px;
  left:1030px;
  width:120px;
  height:50px;
  margin:30px 50px;
 background-color:#dadada;
border-radius: 5px;
font-weight: 700;
font-size: 20px;
line-height: 50px;
box-shadow:  #3D3D3D 4px 4px 4px;
cursor: pointer;
}
.register:hover{color: #ffffff;}

.error{
	color: #ff0000;
}
#heading a{
	text-decoration: none;
}
#heading img{
margin-bottom: -5px;
}
#enter{
	font-family: rvaturecu;
	text-decoration: none;
	color: #ffffff;
	letter-spacing: 2px
}
.browser:hover{
		-webkit-transition: all 0.7s linear;
		-webkit-transform: rotate(6.28rad);
		-moz-transition: all 0.7s linear;
		-moz-transform: rotate(6.28rad);	
		-ms-transition: all 0.7s linear;
		-ms-transform: rotate(6.28rad);	
        transition: all 0.7s;
	transform: rotate(6.28rad);
}
</style>
</head>

<body bgcolor="#000000">

<center>
<img src="ghost.png" id="thanks" style="z-index: 5; display: none; position: absolute; top: 200px; margin-left: -300px;" />
<div style="font-size: 26px; color:#ffffff; margin-top: 40px;">
<span style="font-size: 36px;" id="heading">E-Learning 

</span>
<br/><br/><br/><img src="elearnig.jpg" style="" />
<br/><br/><br/>
<a href="Default.aspx" id="enter">Press Click Here</a>
</div>
</center>


<div class="mainregister" id="register" align=center><a href="registration.aspx" id="A1">Register</a></div>

<span style="color: #ffffff;">
</span>
<!-- Registory box -->

<div class="regbox" id="regbox" style="background-color: rgb(218,218,218); top: 45px;">
<br/><br/>
<div style="position: absolute; right: 50px;  top: 170px; width: 40%;" align="center">
<em><h2 style="font-family: sans-serif; font-size: 20px;">"Please bring your college ID and a <span style="color: #ff0000;">photocopy</span> of the same with you. Entry in college premises without college I-Card is not permitted."</h2><br/><br/><span style="color:red">**</span>Registrations closed for Battle of Bands, Solo Singing and Solo / Group Dance</em>
</div>

<form action="http://www.fiesta14.com/index.php" method="post">
<input type="text" class="text" name="name" placeholder="Name">&nbsp;*&nbsp;<span class="error"></span><br/><br/>
<input type="text" class="text" name="team_name" placeholder="Team name (optional)"><br/><br/>
<select name="event" class="text" id="select" onchange="color()">
<option selected value="">Event</option>

<option value="LAN Gaming">LAN Gaming</option>
<option value="IT Quiz">IT Quiz</option>
<option value="Website Designing">Website Designing</option>
<option value="C++ Programming">C++ Programming</option>
<option value="Select * from Brain">Select * from Brain</option>
<option value="Photography">Photography</option>
<option value="Ad-Mad">Ad-Mad</option>
<option value="Collage and Poster Making">Collage and Poster Making</option>
<option value="Cooking without fire">Cooking without fire</option>
<option value="Singing (Group)">Singing (Group)</option>
<option value="Rangoli">Rangoli</option>
<option value="Just a minute">Just a minute</option>
<option value="Creative Writing">Creative Writing</option>
<option value="T-Shirt Painting">T-Shirt Painting</option>
<option value="Nukkad Natak">Nukkad Natak</option>
<option value="Sketching and Cartooning">Sketching and Cartooning</option>
<option value="Mr. and Ms. Fiesta">Mr. and Ms. Fiesta</option>
</select>&nbsp;*&nbsp;<span class="error"></span><br/><br/>
<input type="text" class="text" name="college" placeholder="College">&nbsp;*&nbsp;<span class="error"></span><br/><br/>
<input type="text" class="text" name="course" placeholder="Course">&nbsp;*&nbsp;<span class="error"></span><br/><br/>
<input type="email" class="text" name="email" placeholder="Email Id">&nbsp;*&nbsp;<span class="error"></span><br/><br/>
<input type="text" class="text" name="contact" maxlength=10 placeholder="Contact No.">&nbsp;*&nbsp;<span class="error"></span><br/><br/>

<input type="submit" value="Submit" class="button" style="margin-left: -40px;">
<input type="reset" value="Reset" class="button" onclick="uncolor()">
<input type="button" value="Exit" class="button" id="exit" onclick="uncolor()">
</form>
</div>

<!-- Developer -->


<!-- Browser -->



<!-- Scripts -->
<script src="jquery-1.10.1.min.js"></script>
<script src="jquery.firefly.js"></script>
<script>
    $(document).ready(function () {
        $.firefly({ images: ['1.jpg', '2.jpg'], total: 70 });
        $(document).keypress(function (e) {
            if (e.which == 13) {
                location.replace("About%20Us.html");
            }
        });
    });
</script>
<script src="main_menu.js"></script>
<script src="register.js"></script>
<script>
    $(document).ready(function () {
        var err = 0;
        if (err) {
            $("#regbox").toggle({ right: '450px' });
        }
        var submitted = 0;
        if (submitted) {
            $("#thanks").fadeIn(2500).delay(100).fadeOut(1500);
        }
        function enter_web() {
            $("#enter").fadeIn(700).fadeOut(700);
            enter_web();
        }
        enter_web();
    });

</script>

<SCRIPT TYPE="text/javascript">
    var message = "Sorry, right-click has been disabled";
    function clickIE() { if (document.all) { (message); return false; } }
    function clickNS(e) {
        if
(document.layers || (document.getElementById && !document.all)) {
            if (e.which == 2 || e.which == 3) { return false; } 
        } 
    }
    if (document.layers)
    { document.captureEvents(Event.MOUSEDOWN); document.onmousedown = clickNS; }
    else { document.onmouseup = clickNS; document.oncontextmenu = clickIE; }
    document.oncontextmenu = new Function("return false") 
</SCRIPT>
<script>
    window.addEventListener("keydown", keyListener, false);

    function keyListener(e) {
        if (e.keyCode == 123) {
            e.returnValue = false;
        }
    }
</script>
</body>

<!-- Mirrored from www.fiesta14.com/index.php by HTTrack Website Copier/3.x [XR&CO'2008], Sun, 27 Apr 2014 06:55:15 GMT -->
</html>
