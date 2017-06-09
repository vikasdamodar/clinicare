<%-- 
    Document   : dlog
    Created on : May 28, 2017, 10:01:37 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>


<%
        String dun=request.getParameter("dusername");
        String dpass=request.getParameter("dpassword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinicare", "root", "");
        String qry="Select count(*),dname from doctorlog where dusername=? and dpass=?";
              PreparedStatement  ps=con.prepareStatement(qry);
              ps.setString(1,dun);ps.setString(2, dpass);
              ResultSet rs=ps.executeQuery();
              StringBuilder builder = new StringBuilder();
//              String s;
              while(rs.next())
                {
                   int c=rs.getInt(1);
                   
                   String s=rs.getString(2);
                   builder.append(s);
                   if(c!=1)
                   {
                    response.sendRedirect("doctormain.jsp");   
                   }
                   
                
              
              
%>
<html>
    <style>
         table {
               border-collapse: collapse;
               width: 70%;
              }

        th, td {
            text-align: center;
            padding: 8px;
            }

        tr:nth-child(even){background-color: #f2f2f2}
        td {
            font-weight: bold;
        }

        th {
            background-color: #1abc9c;
            color: white;
           }
        </style>
    <body>
        <h1>Hai <%=s %></h1> <% }
        String st=builder.toString();%>
    <hello><%= st%></hello>
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String datenow=sdf.format(new Date());
            String qry3="Select * from patient_reg where date=?";
              PreparedStatement  ps3=con.prepareStatement(qry3);
              ps3.setString(1,datenow);
              ResultSet rs3=ps3.executeQuery();
             
            %>
    <center>
        Your Appointments are on Today ( <%= datenow%> ): <br><br><br>
         <table>
            <tr>
              <th>Name</th>
              <th>Age</th>
              <th>Gender</th>
              <th>Contact No</th>
              <th>Street</th>
              <th>Time</th>
            </tr>
            <% while(rs3.next())
                  {
                %>
                <tr>
                    <td> <%= rs3.getString(2)  %></td>
                    <td> <%= rs3.getInt(4) %></td>
                    <td> <%= rs3.getString(5) %></td>
                    <td> <%= rs3.getString(6) %></td>
                    <td> <%= rs3.getString(9) %></td>
                    <td> <%= rs3.getString(13) %></td>

                </tr>

             <% } %>
          </table>
    </center>
    </body>
</html>

