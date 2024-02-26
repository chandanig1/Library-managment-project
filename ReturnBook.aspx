<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="Liabrary_managment_system.ReturnBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Return Book</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-50 py-5"><h1><i>Return Book</i></h1>
          <%-- <div class="col-xl-6">--%>
               <div class="card px-3 py-3">
                    <div class="row">
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label1" runat="server" Text="StdEnrollno."></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label2" runat="server" Text="Stdname"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     </div>
                    <div class="row">
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label3" runat="server" Text="StdDep"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label4" runat="server" Text="Stdsem"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     </div>
                    <div class="row">
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label5" runat="server" Text="Contact"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label7" runat="server" Text="Bookname"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label8" runat="server" Text="Issuedate"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     </div>
                    <div class="col-xl-6 mb-2">
                    <asp:Label ID="Label9" runat="server" Text="ReturnDate"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                   <div class="row">                    
                    <div class="col-xl-6 mb-2">
                   <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="btn btn-primary w-50" OnClick="Button1_Click"/>
                    </div>
                   <div class="col-xl-6 mb-2">
                   <asp:Button ID="Button2" runat="server" Text="Exit" CssClass="btn btn-warning w-50" OnClick="Button2_Click"/>
                     </div>
                    </div>
                </div>          
        </div>
    </form>
</body>
</html>
