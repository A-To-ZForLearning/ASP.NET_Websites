<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterationPage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 171px;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style3 {
            width: 90%;
            height: 144px;
        }
        .auto-style4 {
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">Username</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server" Width="148px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" Width="149px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirPassword" Display="Dynamic" ErrorMessage="Password Not Match" ForeColor="#CC3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirPassword" runat="server" Width="147px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirPassword" Display="Dynamic" ErrorMessage="Please Enter Your Password Confirmation" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server" Width="148px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="#CC3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="#CC3300"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register New User" Width="152px" />
                </td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myNewDB1ConnectionString %>" InsertCommand="insert into users values(@username, @password,@email)" SelectCommand="SELECT * FROM [users]">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txtUsername" Name="username" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
<%--  --%>