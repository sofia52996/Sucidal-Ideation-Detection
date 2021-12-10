<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style40 {font-size: 26px}
-->
</style>
<head>
<title>Add Filter</title>
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
.style44 {font-size: 24px; font-weight: bold; color: #FF0000; }
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
        <h2 class="style16"><span class="style26">Added Filter </span></h2>
        <div class="post_content">
          <h2 align="center">&nbsp;</h2>
          <%@ include file="connect.jsp" %>
                               <%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>

            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String filter=null,categorie=null,location1=null,sk=null,bin = "", paramname=null,cattype=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("categorie"))
							{
								categorie=multi.getParameter(paramname);
								
							}
							if(paramname.equalsIgnoreCase("filter"))
							{
								filter=multi.getParameter(paramname);
								
							}
							
							
							
							}
							
						
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from filter  where categorie='"+categorie+"' and filter='"+filter+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		out.print("filter Already Exist");
							
							
				%>
			<p><a href="TSMain.jsp" class="style8">Back</a></p>
				<%
				
					   }
					   else
					   {
					   
					   
					
					
					String strQuery2 = "insert into filter(categorie,filter) values('"+categorie+"','"+filter+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
			
							out.print("Filter Added Successfully");
							
			%>			
			<p><a href="A_AddFilter.jsp" class="style8">Back</a></p>
			<%
			
					
					
					
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          <p align="center">&nbsp;</p>
        </div>
      </div>
      <a href="TSMain.jsp" class="style22"></a></div>
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
