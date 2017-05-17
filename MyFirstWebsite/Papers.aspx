<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Papers.aspx.cs" Inherits="Papers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Title</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="521px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Details</td>
                <td>
                    <asp:TextBox ID="txtDet" runat="server" Height="210px" TextMode="MultiLine" Width="526px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Image</td>
                <td>
                    <input id="File1" type="file" runat ="server"/></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnupload" runat="server" OnClick="btnupload_Click" Text="Upload" Width="140px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
