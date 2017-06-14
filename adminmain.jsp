<%-- 
    Document   : adminmain
    Created on : May 28, 2017, 9:17:39 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
        String name=request.getParameter("username");
        String pass=request.getParameter("password");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinicare", "root", "");
        String qry="select * from doctors where did NOT in(SELECT did FROM doctorlog)";
        PreparedStatement ps=con.prepareStatement(qry);
        ResultSet rs=ps.executeQuery();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin activities</title>
    </head>
    <style>
       .navbx{background-color: #2a5d84;width:94%;padding: 1px 44px;color:white;}
       ul {list-style-type: none;margin: 0;padding:30px 30px;width: 14%;background-color: #efeee5;height: 490px;}
       li a {display: block;color: #000;padding: 8px 16px;text-decoration: none;}
       li a.active {background-color: #2a5d84;color: white;}
       li a:hover:not(.active) {background-color: #555;color: white;}
       .logout{float:right;text-decoration: none;color: white;margin-top: -45px;}
       table {border-collapse: collapse;width: 73%;}
        th, td {text-align: center;padding: 8px;}
        tr:nth-child(even){background-color: #f2f2f2}
        td {font-weight: bold;}
        th {background-color: #2a5d84;color: white;}
    </style>
    <body>
        <div class="navbx"><h2>Hai <%=name%></h2><a href="Clinicare_Home.jsp" class="logout">Logout</a></div>
        <ul>
            <li><a  class="active" href="adminmain.jsp">Doctors Requests</a></li>
            <li><a href="medcampedit.jsp">Med camps</a></li>
            <li><a href="bloodedit.jsp">Blood Donors</a></li>
         </ul>
    <center>
        <table style="margin-top: -39%;margin-left: 16%;">
            <tr>
              <th>Doctor ID</th>
              <th>Name</th>
              <th>Clinic Name</th>
              <th>City</th>
              <th>Address</th>
              <th>Phone</th>
              <th>Unique ID</th>              
            </tr>
            <% while(rs.next())
                  {
                %>
                <tr>
                    <td> <%= rs.getInt(1)  %></td>
                    <td> <%= rs.getString(2) %></td>
                    <td> <%= rs.getString(3) %></td>
                    <td> <%= rs.getString(4) %></td>
                    <td> <%= rs.getString(5) %></td>
                    <td> <%= rs.getString(6) %></td>
                    <td> <%= rs.getString(7) %></td>                   
                </tr>

             <% } %>
          </table>
    </center>

    </body>
</html>
