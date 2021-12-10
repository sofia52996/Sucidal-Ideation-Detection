<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style33 {color: #00FF00}
.style37 {color: #FFFF00}
.style38 {font-weight: bold}
.style39 {font-weight: bold}
.style40 {font-weight: bold}
.style41 {font-weight: bold}
-->
</style>
<head>
<title>All Comments on Tweet</title>
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
.style1 {font-size: 30px}
.style16 {font-size: 25px;
	font-weight: bold;
}
.style21 {color: #0066CC; font-size: 18px; font-weight: bold; }
.style22 {font-size: 14px}
.style24 {font-size: 16px}
.style28 {font-size: 19px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style1">Suicidal Ideation Detection A Review of Machine Learning Methods and Applications</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html"><strong>Home</strong></a></strong></li>
          <li><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li class="active"><a href="TSLogin.jsp"><strong>Tweet Server</strong></a></li>
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
        <h2 class="style16">All Comments on Tweet <span class="style33"></span></h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">&nbsp;</h2>
          <h2 align="center">
            <table width="702" height="125" border="1"  align="center">
              <tr>
                <td width="57" height="27" align="left" valign="bottom" bgcolor="#FFFFFF"><div align="center" class="style21 style28 style37">
                  <div align="center">S.No</div>
                </div></td>
                <td width="134" align="left" valign="bottom" bgcolor="#FFFFFF"><div align="center" class="style21 style28 style37">
                  <div align="center">Comments</div>
                </div></td>
				 <td width="162" align="left" valign="bottom" bgcolor="#FFFFFF"><div align="center" class="style21 style28 style37">
                   <div align="center">Tweeted By</div>
			    </div></td>
				 <td width="226" align="left" valign="bottom" bgcolor="#FFFFFF"><div align="center" class="style21 style28 style37">
                   <div align="center">Re Tweeted Date </div>
			    </div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=1,j=0;
	String tname=request.getParameter("tname");
    try 
	{
        
				   String query="select * from tcomment"; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				   while ( rs.next() )
				   {
								
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								
								
							
%>
              <tr>
                <td height="83"><div align="center" class="style22 style38">
                  <div align="center"><%=i%></div>
                </div></td>
			    <td align="center" valign="middle"><div align="center" class="style22 style39">
			      <div align="center"><%=s1%></div>
			    </div></td>
				<td align="center" valign="middle"><div align="center" class="style22 style40">
			      <div align="center"><%=s2%></div>
				</div></td>
				<td align="center" valign="middle"><div align="center" class="style22 style41">
			      <div align="center"><%=s3%></div>
				</div></td>
		      </tr>
  <%
  		i+=1;

	 
	  	 }
           connection.close();
         }
         
         catch(Exception e)
         {
           out.println(e.getMessage());
         }
%>
            </table>
          </h2>
          <p align="center">&nbsp;</p>
        </div>
      </div>
      <p><a href="TSMain.jsp" class="style24">Back</a></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
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
