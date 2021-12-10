<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {font-weight: bold}
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style5 {font-weight: bold}
-->
</style>
<table width="778" border="1">
				  
				  <tr>
				  <td width="244" height="42" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style35 style1 style2">
						<div align="center">Tweet Name </div>
					</div></td>
					<td width="244" bgcolor="#FFFF00" ><div align="left" class="style5 style35 style1 style3">
						<div align="center">Commented User </div>
					</div></td>
					<td width="230" bgcolor="#FFFF00" ><div align="left" class="style36 style6 style1 style4">
						<div align="center">Comment</div>
					</div></td>
					<td width="266" bgcolor="#FFFF00"><div align="left" class="style37 style6 style1 style5">
						<div align="center">Date</div>
					</div></td>
				  </tr>
<%@ include file="connect.jsp"%>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="No distress" ;
	
	String stype="No_distress";
	
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	try
	{
			String sql3="select tname,user from ttopic";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>

	
				 
				  <%

				  String query="select * from tcomment where tname='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(4).toLowerCase();  // comment post 
					s4=rs.getString(5);  // user
					s5=rs.getString(6);  // Date
					
					count++;

			   
			       String sql1="select * from filter where categorie='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
							 
							
							 
									 %>
							  <tr>
							  <td width="244" height="0" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1"><strong><%=s2%></strong></div></td>
								<td width="244" height="0" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1"><strong><a href="A_UserProfile.jsp?value=<%=s4%>"> <%=s4%></a></strong></div></td>
								<td width="230" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s3%></strong></div></td>
								<td width="266" height="0"  style="color:#000000;"><div align="center" class="style32 style5"><strong><%=s5%></strong></div></td>
			  <td width="10" height="0"  style="color:#000000;"><div align="center">			  </tr>
							  				
		    <%   					}

					      }
			      }
			        
			
			
			
			
			
				
				}
				
				 String sql11="Update results set No_Count="+count1+" where stype='"+stype+"' ";
					Statement st11=connection.createStatement();
			  		st11.executeUpdate(sql11);
							 
				
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
