<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booklist.aspx.cs" Inherits="Liabrary_managment_system.Booklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booklist</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <style>
        body{
            background-color:darkgray;
        }
        .me-3 {
            margin-left:48rem;
        }
        .text{
           margin-left:25rem;
        }
        .btn1{
            
            margin-left:23rem;
            width: 5rem;
            border-color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-warning mb-3">
  <a class="navbar-brand" href="#"><h2><i>Book Details List</i></h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">       
    </ul>
    <div class="d-flex me-3">     
     <a href="Dashboard.aspx" class="btn btn-primary mx-3">Dashboard</a> 
        <a href="HomePage.aspx" class="btn btn-primary">Logout</a>
    </div>
  </div>
</nav>
        <div class="text mb-3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>           
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Refress" OnClick="Button3_Click"/>
            <asp:Button ID="Button1" runat="server" Text="Edit" CssClass="btn1" OnClick="Button1_Click"/>
        </div>
         
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsible table-border table-hover" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
       
    </form>
</body>
</html>
