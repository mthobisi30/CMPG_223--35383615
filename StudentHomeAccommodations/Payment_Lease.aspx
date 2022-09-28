<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment_Lease.aspx.cs" Inherits="StudentHomeAccommodations.Payment_Lease" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style3 {
            width: 204px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 208px;
        }
        .auto-style6 {
            height: 23px;
            width: 208px;
        }
        .auto-style7 {
            width: 100%;
            margin-bottom: 23px;
        }
        .auto-style8 {
            width: 208px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 160px;
        }
        .auto-style11 {
            height: 35px;
            width: 160px;
        }
        .auto-style12 {
            height: 23px;
            width: 160px;
        }
        .auto-style13 {
            width: 165px;
        }
    </style>
</head>
<body style="width: 854px">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">STUDENT HOME ACCOMMODATION PORTAL</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">Payment &amp; Lease Agreement </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>Payment</strong></td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Amount:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtAmount" runat="server" Height="21px" Width="149px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Method of Payment:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddlPayment" runat="server" AutoPostBack="True" Width="132px">
                        <asp:ListItem>EFT</asp:ListItem>
                        <asp:ListItem>Cash Deposit</asp:ListItem>
                        <asp:ListItem>Bursary</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style7">
            <tr>
                <td class="auto-style5"><strong>Lease Agreement</strong></td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Download Lease:</td>
                <td class="auto-style11">
                    <asp:Button ID="btnDownload" runat="server" Text="Download" Width="104px" OnClick="btnDownload_Click" />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style6">Upload Signed Lease:</td>
                <td class="auto-style12">
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" Width="107px" OnClick="btnUpload_Click" />
                    
                </td>
                <td class="auto-style4">
                    <asp:FileUpload ID="flLeaseUpload" runat="server" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                </td>
                <td>
                    <asp:Button ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
