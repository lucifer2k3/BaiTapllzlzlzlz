<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TichCacSoChanTu1denN.aspx.cs" Inherits="BaiTap.Views.Buoi2.TichCacSoChanTu1denN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Tích các số chẵn</title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
   <div class="container">
         <h3>Tích các số chẵn</h3>
         <form id="form1" runat="server">
          <div style="height: 242px">
          
              <asp:Label ID="Label1" runat="server" Text="Nhập số N :"></asp:Label>
              <br />
              <asp:TextBox ID="txtN" runat="server"></asp:TextBox>
              <br />
              <asp:Button ID="ButtonTinh" runat="server" Text="Tính" 
                  CssClass="btn btn-primary mt-3 mb-3" onclick="ButtonTinh_Click" />
                <br />
                    <asp:Label ID="Label2" runat="server" Text="Kết quả :" BorderStyle="None"></asp:Label>
                    <br />
              <asp:TextBox ID="txtKetQua" runat="server"></asp:TextBox>
          
          </div>
 
    </form>
   </div>

     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>
</html>
