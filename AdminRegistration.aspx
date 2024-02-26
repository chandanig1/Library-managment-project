<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Liabrary_managment_system.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin registration</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <style>
        .container{
            margin-left:320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class=" container py-5"><h1><i> Admin Registration Form</i></h1>
             <div class="col-xl-6">                  
 <div class="card px-3 py-3">
  <div class="form-group mb-3">
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control shadow" placeholder="Enter Your Name" required="true" ></asp:TextBox>
  </div>   
  <div class="form-group mb-3">
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control shadow" placeholder="Enter your Password " TextMode="Password" required="true" ></asp:TextBox>
  </div>
     <div class="form-group mb-3">
      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control shadow" placeholder="Enter Your Email" required="true" ></asp:TextBox>
  </div>
     <div class="col-md-6 mb-3">
                           <h6>Usertype: </h6>
                            <asp:DropDownList ID="DropDownList1" runat="server" required="true" >
                                <asp:ListItem>Select type</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>                              
                         </asp:DropDownList>
                       </div>
    
     <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary shadow" OnClick="Button1_Click" OnClientClick="<script>alert('Registration successful');</script>" /> 
     <a href="Loginpage.aspx">If have account Login here......</a>
            </div>
            
            </div>
        </div>

    </form>
</body>
</html>
