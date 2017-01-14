<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_userDetail.ascx.cs" Inherits="LinkedIn_Project.Controls.ctrl_userDetail" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 30px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>
            <asp:TextBox ID="txtbox_userDetailId" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btn_getUser" runat="server" Text="Get User Detail" OnClick="btn_getUser_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtbox_firstName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Last Name "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtbox_lastName" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Summary"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtbox_summary" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="btn_update" runat="server" Text="Update " OnClick="btn_update_Click" />
        </td>
    </tr>
</table>

