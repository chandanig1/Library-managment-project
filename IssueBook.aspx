<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="Liabrary_managment_system.IssueBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Issue Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
     <style>
        body{ 
             margin:0px;
            padding:0px;
            background-color:darkgrey;
             background-repeat:no-repeat;
        }
        .container
        {           
            padding-top:2rem;
            margin-left:25rem;
        }
        .img
        {           
            height:13rem;          
        }
        .btn{
            width:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container">
            <h1 class="text"><i> Issue Book</i></h1>
        <div class="col-xl-5">
 <div class="card px-2"><img src="Image/pile.jpg" class="img py-1" />
     <div class="row">
  <div class="col-6 mb-2">
      <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control shadow"></asp:TextBox>
  </div>
  <div class="col-6 mb-2">
      <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control shadow"></asp:TextBox>
  </div>  
         </div>
     <div class="row">
     <div class="col-6 mb-2">
      <asp:Label ID="Label3" runat="server" Text="Issue Book Date"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control shadow"></asp:TextBox>
  </div>
     <div class="col-6 mb-2">
      <asp:Label ID="Label4" runat="server" Text="Student Contact"></asp:Label>
      <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control shadow"></asp:TextBox>
  </div>
         </div>
     <div class="row">
     <div class="col-6 mb-3">
      <asp:Label ID="Label5" runat="server" Text="Student Email"></asp:Label>
      <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control shadow"></asp:TextBox>
  </div>
     <div class="col-6 mb-2">
      <asp:Label ID="Label6" runat="server" Text="Book Name"></asp:Label>
      <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control shadow"></asp:TextBox>
         <div class="col-6 mb-2">    
  </div>
         </div>          
         <div class="row d-flex">
              <div class="col-xl-12 col-lg-10 mb-2">
             <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="Button1_Click"/>                
              <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="Button2_Click"/>                
             <a href="Dashboard.aspx" class="btn btn-info">Exit</a> 
             </div>
         </div>
     
            </div>
        </div>
    </form>
</body>
</html>
