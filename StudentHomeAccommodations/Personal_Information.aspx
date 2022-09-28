<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal_Information.aspx.cs" Inherits="StudentHomeAccommodations.Personal_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 197px;
        }
        .auto-style2 {
            width: 576px;
        }
        .auto-style4 {
            width: 194px;
        }
        .auto-style5 {
            width: 194px;
            height: 34px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style7 {
            width: 194px;
            height: 35px;
        }
        .auto-style8 {
            height: 35px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 191px;
            height: 36px;
        }
        .auto-style11 {
            height: 36px;
        }
        .auto-style12 {
            width: 191px;
            height: 35px;
        }
        .auto-style13 {
            height: 35px;
            width: 279px;
        }
        .auto-style14 {
            height: 34px;
            width: 279px;
        }
        .auto-style15 {
            width: 279px;
        }
        .auto-style17 {
            height: 36px;
            width: 281px;
        }
        .auto-style18 {
            height: 35px;
            width: 281px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2" style="text-align: center">STUDENT HOME ACCOMMODATION PORTAL</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2" style="text-align: center">Personal Information </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">First Name:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtName" runat="server" Width="192px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">Last Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtLname" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">cellPhone Number:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtNumber" runat="server" Width="191px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style12">Email Address:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnProceed" runat="server" Text="Save &amp; Proceed" OnClick="btnProceed_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11"></td>
            </tr>
        </table>
    </form>
</body>
</html>
