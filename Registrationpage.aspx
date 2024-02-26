<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationpage.aspx.cs" Inherits="Liabrary_managment_system.Registrationpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration page</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <style>
        body {
            background-image: radial-gradient(blue,white);
        }
        .container {
           
            margin-left: 325px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<a href="AdminRegistration.aspx" class="btn btn-warning">Admin Registration</a>    
        <div class="container py-5 h-100">
            <h2>Registration Form</h2>
            <div class="col-12 col-xl-6 shadow-lg p-1 mb-5 bg-white rounded">
                <div class="card card-body">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control shadow" placeholder="Enter your firstname"></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control shadow" placeholder="Enter your lastname"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control shadow" placeholder="Enter your email "></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control shadow" placeholder="Enter your Mobile no. "></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox5" runat="server" class="form-control shadow" placeholder="Enter your Password "></asp:TextBox>
                        </div>
                        <div class="col-md-6 mb-3">
                            <asp:TextBox ID="TextBox6" runat="server" class="form-control shadow" placeholder="Enter your confirm Password "></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <h6 id="gender">Gender: </h6>
                            <asp:RadioButton ID="RadioButton4" runat="server" CssClass=" form-check-inline" Text="Male" GroupName="gender" value="Male" />
                            <asp:RadioButton ID="RadioButton5" runat="server" CssClass="form-check-inline" Text="Female" GroupName="gender" value="Female" />
                            <asp:RadioButton ID="RadioButton6" runat="server" CssClass="form-check-inline" Text="select" GroupName="gender" value="other" />
                        </div>
                        <div class="col-md-6 mb-3">
                            <h6>Usertype: </h6>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select type</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>                              
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox ID="TextBox7" runat="server" class="form-control shadow" placeholder="Enter your Address "></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="form-control shadow bg-primary" OnClick="Button1_Click" />                      
                        </div>
                        <div class="col-md-6">
                             <asp:Button ID="Button2" runat="server" Text="Reset" class="form-control shadow bg-primary" />
                            
                        </div>
                        <%-- <a href="Loginpage.aspx">If have an account login now...</a>--%>
                    </div>

                </div>

            </div>
  </div>
    </form>
</body>
</html>
