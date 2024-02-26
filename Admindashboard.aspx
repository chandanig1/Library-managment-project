<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindashboard.aspx.cs" Inherits="Liabrary_managment_system.Admindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminDashBoard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>
        .col-xl-2
        {
            height:29rem;
        }
        .nav-item{
            padding-top:20px;
            margin-left:20px;
        }
        .card1
        {
            width:300px;
            height:200px;
            background-color:cornflowerblue;
        }
         .card2
        {
            width:300px;
            height:200px;
            background-color:cornflowerblue;
            display:flex;
        }
         .card3
        {
            width:300px;
            height:200px;
            background-color:cornflowerblue;
        }
         .text{
             margin-left:5rem;
             padding-top:3rem;
         }
         .img1{
            
            position:absolute
         }
         .ca{
             position:relative;
             padding-top:8rem;
         }
         .row{
             border:solid white;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <div class="container-fluid"><img src="Image/images1.jpg" width="50"/>
    <a class="navbar-brand" href="#"><h2 style="margin-left:3rem"><i>Library Management Project </i></h2></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">       
      
      </ul>
      <div class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </div>
    </div>
  </div>
</nav>
         
           <div class="row ">
               <div class="col-xl-2 bg-warning">
                   <div class="nav-item">
                        <div class="nav-link">
                  <img src="Image/c13.jpg" width="100" style="border-radius:50%"/>
                       </div>
                   <div class="nav-link">
                   <a href="HomePage.aspx"> Home</a>
                       </div>
                   <div class="nav-link">
                   <a href="Studentlist.aspx">StudentList</a>
                       </div>
                   <div class="nav-link">
                   <a href="Booklist.aspx"> BookList</a>
                       </div>
                       <div class="nav-link">
                   <a href="#">Issue BookList</a>
                       </div>
                       <div class="nav-link">
                   <a href="HomePage.aspx">LogOut</a>
                       </div>
                       <div class="nav-link">
                   <a href="Loginpage.aspx">Login</a>
                       </div>
                      
                       </div>
               </div>
              <div class="col-xl-10 px-5 py-5">
                     <div class="row">
                  <div class="col-md-4 mb-4">
                     <div class="card1"><img src="Image/book.jpg" class="text" width="80" />
                         <h4 class="card-title" style="margin-left:3rem">BookList Details</h4>
                     </div>
                    </div>
                  <div class="col-md-4 mb-4">
                    <div class="card2"><img src="Image/7.jpg" class="" width="150" />
                         <h4 class="card-title" style="margin-left:1rem; padding-top:3rem">Student Details</h4>
                    </div>
                  </div>
                    <div class="col-md-4 mb-4">
                    <div class="card3"><img src="Image/png.png" width="100" class="text"/>  
                         <h4 class="card-title" style="margin-left:3rem">Book Issue Details</h4>
                    </div>
                  </div>
                </div>
                  <div class="row">
                  <div class="col-md-4 mb-4">
                     <div class="card1"><img src="Image/images.jpg" height="200" class="img1" />
                         <h3 class="ca" style="margin-left:3rem">Return Book Details</h3>
                     </div>
                    </div>
                  <div class="col-md-4 mb-4">
                    <div class="card2"><img src="Image/1.jpg" width="150"/>
                         <h3 class="card-title" style="padding-top:4rem">All Book</h3>
                    </div>
                  </div>
                  </div>
           </div>
        </div>
               
    </form>
</body>
</html>
