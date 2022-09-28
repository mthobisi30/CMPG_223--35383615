<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="StudentHomeAccommodations.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 147px;
        }
        .auto-style2 {
            width: 551px;
        }
        .auto-style3 {
            width: 147px;
            height: 10px;
        }
        .auto-style4 {
            width: 551px;
            height: 10px;
        }
        .auto-style5 {
            height: 10px;
            width: 308px;
        }
        .auto-style6 {
            width: 147px;
            height: 45px;
        }
        .auto-style7 {
            width: 551px;
            height: 45px;
        }
        .auto-style8 {
            height: 45px;
            width: 308px;
        }
        .auto-style9 {
            width: 308px;
        }
        .auto-style10 {
            height: 271px;
        }
        .auto-style11 {
            height: 271px;
            width: 170px;
        }
        .auto-style12 {
            width: 170px;
        }
        .auto-style13 {
            height: 271px;
            text-align: center;
            width: 504px;
        }
        .auto-style14 {
            width: 504px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 221px;">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7" style="text-align: center">STUDENT HOME ACCOMMODATION PROTAL</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4" style="text-align: center">Reports</td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">Choose type of report:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlReports" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlReports_SelectedIndexChanged" Width="274px">
                        <asp:ListItem>Accommodations Summary </asp:ListItem>
                        <asp:ListItem>Clients Summary</asp:ListItem>
                        <asp:ListItem>Transactions Report</asp:ListItem>
                        <asp:ListItem>Maintenance Report</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtReport" runat="server" Height="234px" Width="370px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Clear All" Width="87px" />
                </td>
                <td>
                    <asp:Button ID="btnCLose" runat="server" OnClick="btnCLose_Click" Text="Close" Width="94px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Go Back" Width="84px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
