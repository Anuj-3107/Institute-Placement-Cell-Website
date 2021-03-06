<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="images/logo.png" type="image/gif" sizes="20x20">
    <title>Company Updation</title>
      
      <link rel="stylesheet" href="css/companyupdationstyle.css">
      <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
      <link rel="stylesheet" href="fonts/icomoon/style.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <script type="text/javascript">
          function myfunction()
          {
           var x=document.forms["myform"]["ID"].value;
           var y=document.forms["myform"]["name"].value;
           var z=document.forms["myform"]["cpi"].value;
           var w=document.forms["myform"]["file"].value;
           if (x==""||y==""||z==""||w=="") 
           {
            alert("Enter complete details");
            return false;
           }
          }
          
          function myfunc()
          {
           var x=document.forms["myform1"]["ID"].value;
           if (x=="") 
           {
            alert("Enter Company ID");
            return false;
           }
          }

        </script>
  </head>
  <body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
  <div class="container">
    <a class="navbar-brand" href="#">
          <img src="images/logo.jpg" height="70px" width="70px" style="border-radius:50%;">
        </a>
        <h3 style="color:white;">Training & Placement Office IIIT Vadodara</h3>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
      <li class="nav-item">
          <a class="nav-link" href="aftertpologin.jsp">Back</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
   <div class="col-md-6 offset-md-3 mt-5">
        <hr>
        <h1 style="text-align:center">Add Company</h1>
        <% if((String)session.getAttribute("message6")!=null)
                        	{
                        %> 
                        <div style="color:red; text-align:center;"><%= (String)session.getAttribute("message6") %></div>
                        <% }%>
        <form accept-charset="UTF-8" name="myform" action="addcompany" method="post" enctype='multipart/form-data' onsubmit="return myfunction()">
          <div class="form-group">
            <label for="exampleInputName">Company ID</label>
            <input type="text" name="ID" class="form-control" placeholder="Enter Company ID " required="required">
          </div>
          <div class="form-group">
            <label for="InputName" required="required">Name Of Company</label>
            <input type="text" name="name" class="form-control" placeholder="Enter name">
          </div>
      <div class="form-group">
            <label for="exampleInputEmail1" required="required">CPI Requirement</label>
            <input type="text" name="cpi" class="form-control"   placeholder="Enter CPI Requirement">
          </div>

          <hr>
          <div class="form-group mt-3">
            <label class="mr-2">Upload Document link</label>
            <input type="text" name="file">
          </div>
          <hr>
          <input type="submit" value="Add" class="btn btn-dark" style="margin-left:285px;">

        </form>
        <br><br><hr>
        <h1 style="text-align:center">Remove Company</h1>
        <% if((String)session.getAttribute("message5")!=null)
                        	{
                        %> 
                        <div style="color:red; text-align:center;"><%= (String)session.getAttribute("message5") %></div>
                        <% }%>
          
        <form accept-charset="UTF-8" name="myform1" action="removecomp" method="post" onsubmit="return myfunc()">
          <div class="form-group">
            <label for="exampleInputName">Company ID</label>
            <input type="text" name="ID" class="form-control" placeholder="Enter Company ID " required="required">
          </div>
          <hr>
          <input type="submit" value="Remove" class="btn btn-dark" style="margin-left:275px;">
        </form>
        <br>
        <hr>
    </div>
<div class="footer" id="footers">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <p class="mb-4"><img src="images/logo.png" alt="Image" class="img-fluid" width="100px" height="100px"><br><strong>IIIT Vadodara</strong></p>

          </div>
          <div class="col-lg-6">
            <h3 class="footer-heading"><span>Contact</span></h3>
            <p><strong>Email:</strong>
              <a href="placement@iiitvadodara.ac.in" target="_blank"></a>placement@iiitvadodara.ac.in<br><strong>Address: </strong>c/o Block No.9, Government Engineering College, Sector-28, Gandhinagar, Gujarat - 382028</p>
            <a href="https://www.google.com/maps/place/Indian+Institute+of+Information+Technology+Vadodara+(Gandhinagar+Campus)/@23.2588279,72.6481031,16.75z/data=!4m5!3m4!1s0x395c2c777c4b5e63:0xf2af0643c7186398!8m2!3d23.2591039!4d72.6504058" target="_blank">See on Google Map</a>
            <br>
            <div class="ml-auto">
            <div class="social-wrap">
              <br>
             <p>FOLLOW US ON</p>
              <a href="https://www.facebook.com/iiitvadodara.ac.in" target="_blank"><span class="icon-facebook"></span></a> &nbsp &nbsp &nbsp &nbsp
              <a href="https://www.youtube.com/channel/UCunsVCRB_ihuQQwmFURrUpQ" target="_blank"><span class="icon-youtube"></span></a>&nbsp &nbsp &nbsp &nbsp
              <a href="https://www.linkedin.com/school/iiitvadodara/" target="_blank"><span class="icon-linkedin"></span></a>
            </div>
          </div>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>Links</span></h3>
            <a href="about.html">Home</a><br>
            <a href="http://iiitvadodara.ac.in/" target="_blank">Institute Site</a><br>
            <a href=""></a>
          </div>
        </div>


      </div>
    </div>

  </body>
</html>
    