<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Liabrary_managment_system.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <style>
      .img{
          position:relative;
            width:100%;
            height:550px;
            background-repeat:no-repeat;
          background-attachment:fixed;
          background-position:center;                     
        }
      .text{
          position:absolute;
          top:40%;
          left:30%;
          text-align:center;
      }
      .im{
          width:50px;
          border-radius:40%;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
         <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="Image/images1.jpg" class="im" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-expanded="false">
             Book
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Addbook.aspx">Add Book</a></li>
            <li><a class="dropdown-item" href="Booklist.aspx">Book List</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown0" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Student
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Addstudent.aspx">Add Student</a></li>
            <li><a class="dropdown-item" href="Studentlist.aspx">Student List</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Issue Book
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="IssueBook.aspx">Issue Book</a></li>
            <li><a class="dropdown-item" href="IssueBookList.aspx">Issue Book List</a></li>
            
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Return Books
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Return Book</a></li>
            <li><a class="dropdown-item" href="#">Return Book Details</a></li>
            
          </ul>
        </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Complete Book Details
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">All Book </a></li>
            <li><a class="dropdown-item" href="#">All Book List</a></li>
            
          </ul>
        </li>
      </ul>
      <div class="d-flex">
         <%-- <asp:Button ID="Button1" runat="server" Text="Logout" class="btn btn-outline-success" />--%>
          <a href="HomePage.aspx" class="btn btn-primary">Logout</a>
       
      </div>
    </div>
  </div>
</nav><div>
         <img src="Image/9e.jpg" class="img" />
    <div class="text">
       <h1><i>Library Management Project</i></h1>
        <p></p>
    </div>
    </div>
    </form>
  <%-- <img src="Image/-images.jpg" class="img" />--%>
</body>
</html>
