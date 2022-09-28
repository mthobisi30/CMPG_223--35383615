<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="StudentHomeAccommodations.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 36px;
            width: 576px;
        }
        .auto-style2 {
            width: 100%;
            height: 197px;
        }
        .auto-style3 {
            height: 19px;
        }
        .auto-style4 {
            text-align: center;
            height: 19px;
            width: 576px;
        }
        .auto-style5 {
            height: 36px;
        }
        .auto-style6 {
            height: 36px;
            width: 40px;
        }
        .auto-style7 {
            height: 19px;
            width: 40px;
        }
        .auto-style8 {
            width: 40px;
        }
        .auto-style9 {
            width: 576px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 358px;
        }
        .auto-style12 {
            width: 570px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style1">STUDENT HOME ACCOMMODATION PROTAL</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style4">Order Confirmation and more useful Details </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtDetails" runat="server" Height="215px" Width="835px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btnBack" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Back" Width="120px" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnMaintenance" runat="server" CssClass="auto-style10" OnClick="btnMaintenance_Click" Text="Go To Maintenance" Width="120px" />
                </td>
                <td>
                    <asp:Button ID="btnClose" runat="server" Text="Close" Width="120px" OnClick="btnClose_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="btnreports" runat="server" Text="Reports" Width="120px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
