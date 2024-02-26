<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addbook.aspx.cs" Inherits="Liabrary_managment_system.Addbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Addbook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <style>
        body{
            background-color:cornflowerblue;
        }
        .img-fluid{
            height:23rem;
        }
        .btn{
            margin-left:20px;
            width:10rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"> 
        <div class="navbar">
                  <asp:Button ID="Button3" runat="server" Text="Back on Dashboard" CssClass="btn btn-warning" Style="margin-left:62rem" OnClick="Button3_Click"/>

       <%-- <a href="Dashboard.aspx"style="margin-left:62rem" class="btn btn-warning"></a> --%>     
  <div class="container w-50 py-5"><h2><i>ADD BOOK</i></h2>
        <div class="card my-1 px-2 py-2">
          <div class="row g-0">
            <div class="col-xl-4 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-8">
              <div class="card-body p-md-2 text-black">
 <div class="form-group">
     <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>    
 </div>
     <div class="form-group">
     <asp:Label ID="Label2" runat="server" Text="Book Author Name"></asp:Label>
     <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>    
     </div>
     <div class="form-group">
     <asp:Label ID="Label3" runat="server" Text="Book Purchase Date"></asp:Label>
     <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" EnableTheming="True" ></asp:TextBox>
        <%-- <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>--%>
     </div>
     <div class="form-group">
     <asp:Label ID="Label4" runat="server" Text="Book quantity"></asp:Label>
     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>    
     </div>
       <div class="form-group mb-3">
     <asp:Label ID="Label5" runat="server" Text="Book Price"></asp:Label>
     <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ></asp:TextBox> 
     </div>
                  <div class="row">
       <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="Button2_Click" /></div>
        
              </div>
                  </div>
            </div>
          </div>
        </div>
           
  </form>
</body>
</html>
