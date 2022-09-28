<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accommodation.aspx.cs" Inherits="StudentHomeAccommodations.Accommodation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 218px;
        }
        .auto-style4 {
            width: 218px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 218px;
            height: 43px;
        }
        .auto-style7 {
            height: 43px;
        }
        .auto-style8 {
            height: 25px;
            width: 410px;
        }
        .auto-style9 {
            width: 410px;
        }
        .auto-style10 {
            height: 43px;
            width: 410px;
        }
        .auto-style12 {
            width: 100%;
        }
    </style>
</head>
<body style="width: 877px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style12">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">STUDENT HOME ACCOMMODATION PORTAL</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style5">Accommdation viewing and&nbsp; selection</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style12">
            <tr>
                <td class="auto-style2">Select Accommodation below for specifications viewing </td>
                <td class="auto-style8"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True">
                    </asp:GridView>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDisplay" runat="server" Height="172px" Width="237px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnView" runat="server" Text="View Images" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" Width="80px" OnClick="btnReset_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnProceed" runat="server" Text="Proceed" Width="100px" OnClick="btnProceed_Click" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td><strong>Additional Functions</strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnProceedPayment" runat="server" Text="Proceed to Payments" Width="155px" OnClick="btnProceedPayment_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnProceedMaintenance" runat="server" Text="Proceed to Maintenance" Width="155px" OnClick="btnProceedMaintenance_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
