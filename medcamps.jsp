<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>

<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String datenow=sdf.format(new Date());
    out.println(datenow);
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinicare", "root", "");
        String qry="Select * from medcamps";
        String qry2="delete from medcamps where date=?";
        PreparedStatement ps2=con.prepareStatement(qry2);
        ps2.setString(1,datenow);
        ps2.executeUpdate();
        PreparedStatement ps=con.prepareStatement(qry);
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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Medical Camps</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />    
    

</head>
<style>
    #m{margin-bottom: 550px;}
</style>
<body >
    
    <div class="navbar navbar-inverse navbar-fixed-top" style="background:rgba(0,0,0,0.5);border:none;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">cliniCare</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Clinicare_Home.jsp">HOME</a></li>
                     <li><a href="appointment.jsp">APPOINTMENT</a></li>
                    <li><a href="bbank.jsp">BLOOD BANK</a></li>
                     <li><a href="services.jsp">SERVICES</a></li>
                </ul>
            </div>
           
        </div>
    </div>
   <!--/.NAVBAR END-->
        
<!--       <section id="home" class="text-center">-->
         
                <div id="carousel-example" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                       <div class="item active">

                            <img src="images/medcamp4.jpg" alt="" />
                            <div class="carousel-caption" >
                                <h2 class="back-light" id="m">MEDICAL CAMPS</h2>
                            </div>
                        </div>                        
                    </div>
                </div>
           



        <section id="intro">
            <div class="container">
           <div class="row text-center" >
            <div class="col-md-12">
             
                 <div class="row text-center pad-row  ">
                     <% while(rs.next())
                            {
                     %>
                     
                 <div class="col-md-4 col-sm-4 ">
                           <h3><strong><%= rs.getString(2) %></strong> </h3>
                           <p>Place : <%= rs.getString(3) %></p>
                           <p>Street : <%= rs.getString(4) %></p>
                           <p>on : <%= rs.getString(7) %> at : <%= rs.getString(6)%></p>


                       <p>
                          About Camp : <%= rs.getString(8)%> </p>
                       <p> Ph : <%= rs.getString(5)%></p>
                    </div>
                     <% } %>
                 
<!--                     <div class="col-md-4 col-sm-4 ">
                        <img class="img-circle" src="assets/img/tea2.jpg" alt="" />
                           <h3><strong>Blood Donation Camp</strong> </h3>
                       <p>
                           St.Johns hospital is conducting a blood donation camp
                           in govt. school in Anekkal Taluk. Those who are intrested in 
                           charity services you can be the part
                           Ph : 2280547
                            </p>                            
                    </div> -->
                     
                 </div>                
            </div>               
               </div>
        </div>
        </section>

    <!--/.INTRO END-->
      <section id="offer"  >
           <div class="container">
           <div class="row   alert alert-info" >
                 <div class="col-md-8 col-sm-8">
                      <h1>  Are you a social worker ? you can inform about medical camps </h1>
                 </div>
                 <div class="col-md-4 col-sm-4" style="padding-top: 15px;">
                     <a href="medcampinfo.jsp" class=" btn btn-primary btn-lg">Inform Here</a> 
                 </div>
                          
               </div>
               </div>
      </section>
     <section  class="note-sec" >
         
               <div class="container">
           <div class="row text-center pad-row" >
            <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 ">
                <i class="fa fa-quote-left fa-3x"></i>
               <p>Majority of the people living in remote villages are daily wage laborers,
                   who earn very meager income.
                   They don't go hospital or get a health checkup even when they are sick. Because, 
                   their little income won't be sufficient to afford to the costs 
                   of getting a good health checkup or buying 
                   the medicines the doctor has prescribed for them.
                   Hence, many people die each year even though their sickness was easily curable.</p>
                </div>
               </div>
            </div>   
           
       </section>
    <section id="footer-sec" >
             
            <div class="container">
           <div class="row  pad-bottom" >
            <div class="col-md-4">
                <h4> <strong>ABOUT CLINICARE</strong> </h4>
                            <p>
                                Clinicare is a social service website that try to gives solution about major medical issues
                                in your city in Bengaluru. Those are really want to help others they also can be part of us with
                                this website .
                            </p>
                <a href="#" >read more</a>
                </div>
               <div class="col-md-4">
                    <h4> <strong>SOCIAL LINKS</strong> </h4>
                   <p>
                     <a href="#"><i class="fa fa-facebook-square fa-3x"  ></i></a>  
                        <a href="#"><i class="fa fa-twitter-square fa-3x"  ></i></a>  
                        <a href="#"><i class="fa fa-linkedin-square fa-3x"  ></i></a>  
                       <a href="#"><i class="fa fa-google-plus-square fa-3x"  ></i></a>  
                   </p>
                </div>
               <div class="col-md-4">  
                    <a href="#" class="btn btn-primary" >SEND QUERY</a>
                </div>
               </div>
            </div>
    </section>         
    <!--/.FOOTER END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/plugins/bootstrap.js"></script>
  <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>