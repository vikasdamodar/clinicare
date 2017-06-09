<%-- 
    Document   : medinformed
    Created on : Jun 7, 2017, 11:09:01 PM
    Author     : hp
--%>

<%@page import="java.lang.System.in"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
     Class.forName("com.mysql.jdbc.Driver");
     String k;
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinicare", "root", "");
        String cname=request.getParameter("cname");
        String city=request.getParameter("city");
        String street=request.getParameter("street");
        String mb=request.getParameter("contact");
        String time=request.getParameter("time");
        String date=request.getParameter("date");
        String desc=request.getParameter("desc");
        String qry="INSERT INTO `medcamps`(`cname`, `city`, `street`, `contact`, `time`, `date`, `description`) VALUES (?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(qry);
        ps.setString(1,cname);ps.setString(2, city);ps.setString(3,street);
        ps.setString(4, mb);ps.setString(5, time);ps.setString(6, date);
        ps.setString(7, desc);
        int rs=ps.executeUpdate();
        if(rs!=0)
        {
            k="sucess";
        }else{
            k="fail";
        }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>informed</title>
    </head>
    <body>
        <h1><%=k%></h1>
    </body>
</html>

