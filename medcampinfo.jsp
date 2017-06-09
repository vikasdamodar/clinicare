<%-- 
    Document   : medcampinfo
    Created on : Jun 7, 2017, 9:54:06 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inform med camps</title>
    </head>
    <style>
        .dvbx{background-color: rgba(0,0,0,0.5);
              padding: 49px 30px;
              width:33%;
              margin-top: 2%;
        }
        .txtbx{ background-color: transparent;width:70%;border:1px solid transparent;border-bottom-color: #1abc9c;padding: 11px 24px;color:white;}
        .tmbx{ background-color: transparent;width:30%;border:1px solid transparent;border-bottom-color: #1abc9c;padding: 8px 24px;color:white;}
        .txtar{width:80%;padding: 30px 24px;border:1px solid transparent;border-bottom-color: #1abc9c;background-color: transparent;color:white;
                border-top-color: #1abc9c;}
        .dbtn{ height:15%;color:white;width:60%;border:1px solid;padding: 8px 1px;
                   border-color: #1abc9c;background-color: #1abc9c;border-radius: 3px;}
    </style>
    <body background="images/medcampinfo1.png">
    <center>
        <div class="dvbx">
        <form action="medinformed.jsp" method="POST">
            <input class="txtbx" type="text" placeholder="Camp Name" name="cname" required id="txtfld1"><br><br>
             <input class="txtbx" type="text" placeholder="City " name="city" required><br><br>
             <input class="txtbx" type="text" placeholder="Street" name="street" required id="txtfld" ><br><br>
             <input class="txtbx" type="text" placeholder="Contact " name="contact" required id="txtfld"><br><br>
             <div style="color:gray;">Time of camp starts &nbsp;: &nbsp;&nbsp;<input class="tmbx" type="Time" placeholder="Time" name="time" required id="txtfld"><br><br>
                 Date camp held on  &nbsp; : &nbsp;&nbsp;<input class="tmbx" type="Date" placeholder="House.No" name="date" required id="txtfld"></div><br><br>
             <textarea placeholder="Give a small descrition about this medical camp...." class="txtar" name="desc"></textarea><br><br><br>
             <input class="dbtn" type="submit" value="Inform here"> 
        </form>
        </div>
    </center>
    </body>
</html>
