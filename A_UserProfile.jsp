<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>

            <table width="547" border="2" align="center"  cellpadding="0" cellspacing="0"  >
              <%@ include file="connect.jsp" %>
              <%@ page import="org.bouncycastle.util.encoders.Base64"%>
              <%
						
						String user=request.getParameter("value");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								//s6=rs.getString(10);
								
								//if(s6.equals("waiting")){
							
									
								//	s1 = new String(Base64.encode(s1.getBytes()));
								//	s2 = new String(Base64.encode(s2.getBytes()));
								//	s3 = new String(Base64.encode(s3.getBytes()));
									//s4 = new String(Base64.encode(s4.getBytes()));
								//	s5 = new String(Base64.encode(s5.getBytes()));
									
								
							//}
								
								
								
								
					%>
              <tr>
                <td width="226" rowspan="6" ><div style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                    <input  name="image" type="image" src="uProfilePic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
                </a></div></td>
              </tr>
              <tr>
                <td  width="129" height="62" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">E-Mail</div></td>
                <td  width="182" valign="middle" height="62"><div align="left" class="style23 style1" style="margin-left:20px;">
                    <%out.println(s2);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" height="52" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">Mobile</div></td>
                <td  width="182" valign="middle" height="52"><div align="left" class="style23 style1" style="margin-left:20px;">
                    <%out.println(s3);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" height="52" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">Address</div></td>
                <td  width="182" align="left" valign="middle" height="52"><div align="left" class="style23 style1" style="margin-left:20px;">
                    <%out.println(s4);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" height="56" align="left" valign="middle" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="left " class="style4 style14 style19 style24" style="margin-left:20px;">DOB</div></td>
                <td  width="182" align="left" valign="middle" height="56"><div align="left" class="style23 style1" style="margin-left:20px;">
                    <%out.println(s5);%>
                </div></td>
              </tr>
              <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
           