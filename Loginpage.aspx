<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Liabrary_managment_system.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login page</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script> 
<style>
        body{
             background-image:linear-gradient(blue,white);
             background-repeat:no-repeat;
        }
        .container
        {
           
            padding-top:5rem;
            margin-left:25rem;
        }
        .img
        {
            width:100px;
            height:80px;
            margin-left:12rem;
        }
        .text{
            color: honeydew;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class=" container">
            <h1 class="text"><i> User Login Form</i></h1>
        <div class="col-xl-6">
 <div class="card px-2"><img src="Image/lg.png" class="img" />
  <div class="form-group mb-3">
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control shadow" placeholder="Enter Your Email"></asp:TextBox>
  </div>
  <div class="form-group mb-3">
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control shadow" placeholder="Enter your Password " TextMode="Password"></asp:TextBox>
  </div>
     <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal" >Change Password</a>
     <%--<a href="forgetpass.aspx">Forget Password..</a>
     <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-primary shadow" />--%>
     <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary shadow mb-4" OnClick="Button1_Click" />
      <a href="Registrationpage.aspx">Have no Account Register now...?</a>
            </div>
           
            </div>
        </div>

        </form>
</body>
</html>
