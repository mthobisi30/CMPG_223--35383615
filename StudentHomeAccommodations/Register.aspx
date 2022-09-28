<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentHomeAccommodations.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 106px;
            margin-right: 0px;
        }
        .auto-style6 {
            height: 54px;
            width: 187px;
        }
        .auto-style4 {
            height: 54px;
            width: 369px;
        }
        .auto-style3 {
            height: 54px;
        }
        .auto-style7 {
            width: 187px;
        }
        .auto-style5 {
            width: 369px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 104px;
        }
        .auto-style11 {
            width: 157px;
        }
        .auto-style12 {
            width: 157px;
            height: 39px;
        }
        .auto-style13 {
            width: 104px;
            height: 39px;
        }
        .auto-style14 {
            height: 39px;
        }
        .auto-style15 {
            width: 100%;
            height: 164px;
        }
        .auto-style16 {
            height: 407px;
            width: 908px;
            margin-right: 0px;
        }
    </style>
</head>
<body style="width: 913px; height: 412px">
    <form id="form1" runat="server">
        <div class="auto-style16">
            <table class="auto-style8">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">STUDENT HOME ACCOMMODATION PORTAL</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">Welcome to the Student Home Accommodation Portal.
                        <br />
                        Please create an account in order to access features provided, if you already have an account please proceed to the Log in page.</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style6">UserName:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtUserName" runat="server" Height="23px" Width="285px"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style7">Student Number:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtStudentNum" runat="server" Height="18px" Width="283px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server" Height="20px" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="115px" OnClick="btnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="118px" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
