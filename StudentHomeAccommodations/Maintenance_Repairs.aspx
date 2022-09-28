<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance_Repairs.aspx.cs" Inherits="StudentHomeAccommodations.Maintenance_Repairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 23px;
            width: 665px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
            width: 665px;
        }
        .auto-style4 {
            width: 171px;
        }
        .auto-style5 {
            width: 171px;
            height: 23px;
        }
        .auto-style6 {
            width: 368px;
        }
        .auto-style7 {
            height: 23px;
            width: 368px;
        }
        .auto-style8 {
            width: 665px;
        }
        .auto-style9 {
            height: 23px;
            width: 120px;
        }
        .auto-style10 {
            width: 120px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            width: 315px;
        }
        .auto-style14 {
            width: 395px;
        }
        .auto-style15 {
            width: 315px;
            height: 23px;
        }
        .auto-style16 {
            width: 395px;
            height: 23px;
        }
    </style>
</head>
<body style="width: 868px">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style1">STUDENT HOME ACCOMMODATION PORTAL</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">Log any Maintenance &amp; Repairs issues or any general complaints</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style4">Type of Maintenance</td>
                <td class="auto-style6">Description</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBoxList ID="chkMaintenanceType" runat="server" OnSelectedIndexChanged="chkMaintenanceType_SelectedIndexChanged">
                        <asp:ListItem>Electrical</asp:ListItem>
                        <asp:ListItem>WIFI &amp; Connectivity</asp:ListItem>
                        <asp:ListItem>Security </asp:ListItem>
                        <asp:ListItem>Doors &amp; Cabinets</asp:ListItem>
                        <asp:ListItem>Access (Keys, Remote &amp; Fingerprint)</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtDescription" runat="server" Height="122px" Width="316px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style7"></td>
                <td class="auto-style2"></td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style15">Complaints</td>
                <td class="auto-style16"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style13">Please do let us know if you have any dissatisfactions with either the system or your residence so we can see to it that we improve or resolve the issue.</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtComplaint" runat="server" CssClass="auto-style12" Height="118px" Width="317px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnClose" runat="server" Text="Close" />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDone" runat="server" Text="Done " OnClick="btnDone_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
