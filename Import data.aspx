<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Import data.aspx.cs" Inherits="Liabrary_managment_system.Import_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Export Data" OnClick="Button1_Click" />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button2" runat="server" Text="Import Data" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
