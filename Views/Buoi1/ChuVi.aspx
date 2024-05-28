<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuVi.aspx.cs" Inherits="BaiTap.Views.Buoi1.ChuVi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div class="container" >
       <h3>Tính chu vi hình tam giác</h3>
           <label class="form-label">Tam giác có 3 cạnh: a, b, c</label>
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
       <div class="form-group">
    
           Nhập c:</div>
    <p class="form-group ">
        <asp:TextBox ID="txtN1" runat="server" CssClass="form-control "></asp:TextBox>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    
    </div>
    </form>
</body>
</html>
