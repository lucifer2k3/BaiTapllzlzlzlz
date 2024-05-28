<%@ Page ValidateRequest="false" Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BaiTap.Views.Buoi4.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 306px;
        }
        .style4
        {
            width: 122px;
            height: 22px;
        }
        .style5
        {
            width: 378px;
            height: 22px;
        }
        .style6
        {
        }
        .style7
        {
            height: 22px;
        }
        .style8
        {
            width: 122px;
            height: 54px;
        }
        .style9
        {
            width: 378px;
            height: 54px;
        }
        .style10
        {
            height: 54px;
        }
        .style11
        {
            width: 122px;
            height: 26px;
        }
        .style12
        {
            width: 378px;
            height: 26px;
        }
        .style13
        {
            height: 26px;
        }
        .style14
        {
            width: 122px;
            height: 25px;
        }
        .style15
        {
            width: 378px;
            height: 25px;
        }
        .style16
        {
            height: 25px;
        }
        .style17
        {
            width: 122px;
            height: 19px;
        }
        .style18
        {
            width: 378px;
            height: 19px;
        }
        .style19
        {
            height: 19px;
        }
        .style20
        {
            width: 122px;
        }
        .style21
        {
            width: 378px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style20">
                    <asp:Label ID="Label1" runat="server" Text="Mã sinh viên"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBoxMaSinhVien" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td rowspan="12" class="style6">
                    <asp:GridView ID="GridViewSinhVien" runat="server" AllowSorting="True" 
                        AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        onselectedindexchanged="GridViewSinhVien_SelectedIndexChanged1" Width="736px">
                        <RowStyle BackColor="#EFF3FB" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label2" runat="server" Text="Họ đệm"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBoxHoDem" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Tên"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBoxTen" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label4" runat="server" Text="Ngày sinh"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBoxNgaySinh" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label5" runat="server" Text="Giới tính"></asp:Label>
                </td>
                <td class="style9">
                    <asp:RadioButton ID="RadioButtonNam" runat="server" Text="Nam" 
                        GroupName="gioiTinh" />
                    <asp:RadioButton ID="RadioButtonNu" runat="server" Text="Nữ" 
                        GroupName="gioiTinh" />
                </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Text="Lớp"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownListLop" runat="server">
                        <asp:ListItem Value="0">Chọn lớp</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style12">
                    <asp:Button ID="ButtonAdd" runat="server" Text="Add" 
                        onclick="ButtonAdd_Click" />
                    <asp:Button ID="ButtonEdit" runat="server" Text="Edit" 
                        onclick="ButtonEdit_Click" />
                    <asp:Button ID="ButtonDelete" runat="server" Text="Delete" 
                        onclick="ButtonDelete_Click" />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Button ID="ButtonCancel" runat="server" Height="25px" style="width: 56px" 
                        Text="Cancel" Width="116px" onclick="ButtonCancel_Click" />
                </td>
                <td class="style16">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
