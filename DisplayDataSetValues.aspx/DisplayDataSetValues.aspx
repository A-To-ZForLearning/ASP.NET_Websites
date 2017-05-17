<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayDataSetValues.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
        .auto-style2 {
            width: 198px;
        }
        .auto-style3 {
            width: 306px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Admin Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAdminName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminName" Display="Dynamic" ErrorMessage="Please Enter an Admin Name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAdminName" ErrorMessage="Please Enter Letters Only" ForeColor="#CC3300" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminPassword" ErrorMessage="Please Enter a Password" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnCheck" runat="server" OnClick="btnCheck_Click" Text="Check" Width="97px" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
