<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DienTich.aspx.cs" Inherits="BaiTap.Views.Buoi1.DienTich" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <h3>Tính diện tích hình chữ nhật</h3>
           <label class="form-label">a: chiều dài<br />
            b: chiều rộng</label>
   <div class="container">
     <div class="row pt-10">
      <div class="col-6">
       <div class="form-group">
    
        <asp:Label ID="Label1" runat="server" Text="Nhập a: " 
            CssClass="font-weight-bold"></asp:Label>
    
           <br />
    
        <asp:TextBox ID="txtN0" runat="server" CssClass="form-control "></asp:TextBox>
    
    </div>
    <div class="row pt-10">
      <div class="col-6">
       <div class="form-group">
    
        <asp:Label ID="Label3" runat="server" Text="Nhập b: " 
            CssClass="font-weight-bold"></asp:Label>
    
    </div>
    <p class="form-group ">
        <asp:TextBox ID="txtN" runat="server" CssClass="form-control "></asp:TextBox>
    </p>
          <p class="form-group ">
              &nbsp;</p>
    <p class="form-group">
           <asp:Button ID="ButtonTinh" runat="server" CssClass="btn btn-primary pl-3" 
               Text="Tính" onclick="ButtonTinh_Click" />
       </p>
       <p class="form-group">
           <asp:Label ID="Label2" runat="server" Text="Kết quả :" 
               CssClass="font-weight-bold"></asp:Label>
       </p>
       <div class="form-group" >
       <asp:Label ID="Label4" runat="server"></asp:Label>
       <%-- <asp:TextBox ID="txtKetQua" runat="server" CssClass="form-control"></asp:TextBox>--%>
       </div>
      
      </div>
     </div>
   </div>

      
    </div>
    </form>
</body>
</html>
