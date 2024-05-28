<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TongCacSoTu1denN.aspx.cs" Inherits="BaiTap.Views.Buoi2.TongCacSoTu1denN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Tổng các số từ 1-> n </title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
       <form id="form1" runat="server" >
   <div class="container">
       <h3> Tổng các số từ 1-> n  </h3>
     <div class="row pt-10">
      <div class="col-6">
       <div class="form-group">
    
        <asp:Label ID="Label1" runat="server" Text="Nhập số n: " 
            CssClass="font-weight-bold"></asp:Label>
    
    </div>
    <p class="form-group ">
        <asp:TextBox ID="txtN" runat="server" CssClass="form-control "></asp:TextBox>
    </p>
    <p class="form-group">
           <asp:Button ID="ButtonTinh" runat="server" CssClass="btn btn-primary pl-3" 
               Text="Tính" onclick="ButtonTinh_Click" />
       </p>
       <p class="form-group">
           <asp:Label ID="Label2" runat="server" Text="Kết quả :" 
               CssClass="font-weight-bold"></asp:Label>
       </p>
       <div class="form-group" >
        <asp:TextBox ID="txtKetQua" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
      
      </div>
     </div>
   </div>

      
    </form>
   
   </body>
</html>
