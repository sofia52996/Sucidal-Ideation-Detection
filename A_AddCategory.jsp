<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style40 {font-size: 26px}
.style43 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style45 {font-size: 18px; color: #FF0000; font-weight: bold; }
-->
</style>
<head>
<title>Add Category</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style16 {font-size: 24px;
	font-weight: bold;
}
.style22 {font-size: 14px}
.style48 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style40"></a>Suicidal Ideation Detection A Review of Machine Learning Methods and Applications</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html" class="style22">Home</a></strong></li>
          <li><strong><a href="UserLogin.jsp" class="style22">User</a></strong></li>
          <li class="active style22"><a href="TSLogin.jsp"><strong>Tweet Server</strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="article">
        <h2 class="style16"><span class="style26">Add Filter Category </span></h2>
        <div class="post_content">
          <h2 align="center">&nbsp;</h2>
          <form id="form1" name="form1" method="post" action="A_AddCategory1.jsp" enctype="multipart/form-data">
            <p align="center" class="style43">&nbsp;</p>
            <table width="503" border="0" align="center">
              <tr>
                <td width="278" height="48"><span class="style45 style48">Enter Category Name</span></td>
                <td width="207"><span class="style43">
                  <input type="text" name="cname" />
                </span></td>
              </tr>
              <tr>
                <td height="45"><span class="style45 style48">Select Category Type</span></td>
                <td><span class="style43">
                  <select name="ct">
                    <option>Positive</option>
                    <option>Negative</option>
                  </select>
                </span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><span class="style43">
                  <input type="submit" name="Submit" value="Add Category" />
                  <input type="reset" name="Submit2" value="Reset" />
                </span></td>
              </tr>
            </table>
            <p align="center" class="style43">&nbsp;</p>
            <p align="center" class="style43">&nbsp;</p>
          </form>
          <p align="center">&nbsp;		  </p>
          <h2 align="center">&nbsp;</h2>
        </div>
      </div>
      <a href="TSMain.jsp" class="style22">Back</a></div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
