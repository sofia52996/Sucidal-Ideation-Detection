<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
   <%

int one= Integer.parseInt(request.getParameter("id"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		
      		
        
           String query="select * from posts where id ="+one+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
		
		
	
		   %>
   <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
   </style>
   

<table width="669" border="0" align="center">
  <tr>
    <td width="179" bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Category</strong></div></td>
    <td width="480"><span class="style10"><%=s2%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Title Name </strong></div></td>
    <td><span class="style10"><%=s3%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Title Description </strong></div></td>
    <td><span class="style10"><%=s4%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Location</strong></div></td>
    <td><span class="style10"><%=s5%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Address</strong></div></td>
    <td><span class="style10"><%=s6%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Title Images </strong></div></td>
    <td>
      <div align="left">
        <input required  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
      </div></td></tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style1 style5"><strong>Ratings</strong></div></td>
    <td><% 
    if(j==3)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/1.png" width="30" height="30" >
    	<%
    }
    if(j>3 && j<=6)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/2.png" width="80" height="30" >
    	<%
    }
    if(j>6 && j<=9)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/3.png" width="100" height="30" >
    	<%
    }
    if(j>9 && j<=12)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/4.png" width="120" height="30" >
    	<%
    }
    if(j>12 && j<=15)
    {
    	%>
    	<input required  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
    	<%
    }
    if(j>15 && j<=30)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/6.png" width="170" height="30" >
    	<%
    }
    %></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">

  <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</p>
<p>&nbsp;</p>
    <p>&nbsp;</p></p>
    <p>&nbsp;  </p>
  </div>

</p>
 
        </span></span></div>
      </div>
      <!--Right Block Ends -->
      <!--Content Block Ends -->
    </div>
  </div>
  <div id="sub_block2">
    <div id="footer_block"></div>
  </div>
</center>
<div align=center></div>
</body>
</html>
