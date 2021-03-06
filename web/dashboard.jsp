<%--
  Created by IntelliJ IDEA.
  User: BIBHABASU
  Date: 4/7/2020
  Time: 12:11 PM
  To change this template use File | Settings | File Templates.
--%>

<%@page import="java.sql.*" %>
<%@page import="JavaProjectInitial.ConnectionDb" %>

<%
    String uname= (String)session.getAttribute("name");
    int i=0;
    Connection con=ConnectionDb.getConn();
    String command="select * from ticket_details where uname=?";
    PreparedStatement stmt=con.prepareStatement(command);
    stmt.setString(1,uname);
    ResultSet rs=stmt.executeQuery();
    while(rs.next()){
        if(i<1){
        System.out.println(rs.getString(4)+" "+rs.getString(6));
        System.out.println("dashboard updated");


%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20192c7fbc.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="dashboard_style.css">
</head>
<body>
<!--Navbar-->
<nav class="navbar navbar-dark bg-dark light-blue lighten-4">

    <!-- Navbar brand -->
    <a class="navbar-brand" href="dashboard.jsp">COVID-19 TravelCover</a>

    <!-- Collapse button -->
    <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
            aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="light"><i
            class="fas fa-bars fa-1x"></i></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">

        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="profilepage.jsp">Profile <span class="sr-only">(current)</span></a>            </li>
            <li class="nav-item">
                <a class="nav-link" href="guidelines.jsp">Guidelines</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="timetable.jsp">Timetable</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guidelines.jsp">Book Tickets</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logoutSrv">Logout</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="validation.jsp">Validate your ticket</a>
            </li>
        </ul>
        <!-- Links -->

    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->

<!-- upcoming journey -->
<div class="up-jr">
    <span class="comparative-big"> Your upcoming journey :-</span>
    <p class="ticket-details">
        <br> Ticket no. - <span class="tno">
        <%
            out.println(rs.getString(6));
        %>
    </span>
        <br> Date & Time - <span class="tdate">
        <%
                out.println(rs.getString(4));
                i++;%>
    </span>
        <br> Price - <span class="tprice">
        <%
            out.println(rs.getString(5)+"/-");
                }
            }
        %>
    </span>

<%--        <br> Time -<span class="ttime"></span> <br>--%>
    </p>
    <div class="cancel-ticket">
        <a href="cancellation.html"  >Cancel your ticket</a>
    </div>
</div>

<div class="blog">
    <div class="blog-heading">
        Blog
    </div>
    <div class="grid">
        <div class="blog-pic">
            <!-- <img src="pic.jpg" alt="Image not found" > -->
        </div>
        <div class="grid-2">
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Asperiores quae accusamus fugiat fuga eius amet, earum nesciunt a, molestias, natus ipsa voluptas dolore error. Impedit fugiat veniam provident, deserunt quidem sapiente est beatae totam hic, qui minima temporibus ratione, eligendi rerum sint unde aut assumenda saepe incidunt dolores fugit consequuntur magnam a quae. Possimus, sed voluptatum veritatis numquam doloremque qui? Aliquam reprehenderit harum ratione veritatis fugit vero, iste, debitis labore quia deserunt suscipit voluptas dolores unde tenetur molestiae nesciunt repellat!
        </div>
    </div>

    <p class="blog-para">
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Autem odio doloremque deleniti, tenetur eius, aperiam praesentium officiis debitis quis reprehenderit, tempora dolorem eligendi voluptatem tempore dolor nisi doloribus reiciendis consequatur? Deserunt necessitatibus alias ullam neque? Enim, nisi? Voluptas pariatur adipisci eius architecto, aperiam excepturi soluta asperiores aliquid quibusdam! Vitae est nobis sunt quos magnam nihil id facilis fuga porro eos. Facilis repellat accusamus consectetur rerum necessitatibus. Reiciendis cum ex ad ab placeat sequi perspiciatis nulla sit vero? Temporibus, quia dignissimos! Sapiente porro molestiae, quae ipsum alias repellat mollitia adipisci tempore ratione quos ipsa quo error vel. Eveniet sit perferendis aperiam fugiat ipsum animi nostrum molestiae corrupti, omnis maxime asperiores vel facere itaque, exercitationem repudiandae placeat accusantium numquam? Fugiat ipsum culpa maiores fugit! Eius rerum molestiae cupiditate obcaecati eveniet dolorem aliquam, fugit quo! Dolor obcaecati odio suscipit delectus, nesciunt aspernatur et earum dolorum libero quas vero dignissimos harum eveniet doloribus id illo voluptatum veritatis laudantium quibusdam nostrum. Cupiditate in odio aliquid consectetur quis ad distinctio. Distinctio possimus corporis consequatur necessitatibus praesentium cumque rerum, hic rem, neque quas dolores amet excepturi, eaque ut eligendi minima voluptas ea quae officiis dignissimos? Suscipit doloribus temporibus unde sequi adipisci veritatis corporis expedita vero libero labore.
    </p>
</div>


</body>
</html>
