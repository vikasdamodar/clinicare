<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStreamReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinicare", "root", "");
        String loc=request.getParameter("user");
        String qry="Select * from ldonors where city=?";
        PreparedStatement ps=con.prepareStatement(qry);
        ps.setString(1,loc);
        ResultSet rs=ps.executeQuery();
       // while(rs.next())
       /* {
            out.println(rs.getString(2)+" "+rs.getBigDecimal(3));
            out.println("<br>");
        }*/
        
        
        //out.println(loc);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view donors</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
         <link href="styles.css" rel="stylesheet">
    </head>
    <style>
        #u{background-color:#F7F9F9;font-family: Microsoft New Tai Lue;
           position:fixed;font-size: 15px;}
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
            background-color: #E74C3C;
            color: white;
           }
        #l{color: grey;font-size: 20px;font-family:Microsoft YaHei Light;}
        .loc{
            margin-right: 0px;
            color:red;
        }
        hr {
            width:60%;
        }
        .last {
            width:565px;
        }
    </style>
    <body>
        <div id="navigation">
            <ul class="nav nav-pills navbar-inverse" id="u">
            <li style="width:370px;height:40px;"></li>
            <li><a href="Clinicare_Home.jsp">HOME</a></li>
            <li><a href="appointment.jsp">APPOINTMENTS</a></li>
            <li><a href="#">MED CAMPS</a></li>
            <li><a href="#">SERVICES</a></li>
<!--            <li style="width:60%;height:0px;"></li>-->
            <li class="last"><a href="dblood.jsp">I'am ready to donate blood !</a></li>
        </ul>
            <br><br><br> <center>
            <h2><div id="l"> List of Peoples Donating Blood in<div class=""><% out.println(loc);%></div></div></h2><br><hr><br><br><br>   
   
        <table>
  <tr>
    <th>Name</th>
    <th>Contact Number</th>
    <th>Blood Group</th>
  </tr>
  <% while(rs.next())
        {
      %>
      <tr><td> <%= rs.getString(2) %> </td>
      <td><%= rs.getBigDecimal(3) %></td>
      <td><%= rs.getString(6) %></td></tr>
   <% } %>
</table>
    </center>
    </body>
</html>

