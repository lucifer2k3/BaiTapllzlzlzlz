<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1_TBcong.aspx.cs" Inherits="Buoi1.Bai1_TBcong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Số a&nbsp;&nbsp;
            <asp:TextBox ID="txta" runat="server"></asp:TextBox>
            <br />
            <br />
            Số b&nbsp;&nbsp;
            <asp:TextBox ID="txtb" runat="server"></asp:TextBox>
            <br />
            <br />
            Số c&nbsp;&nbsp;
            <asp:TextBox ID="txtc" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnTB" runat="server" OnClick="btnTB_Click" Text="Tính trung bình" />
            <br />
            <br />
            Kết quả&nbsp;&nbsp; <asp:TextBox ID="txtKq" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
