<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetail.aspx.cs" Inherits="LinkedIn_Project.Presentation.UserDetail" %>

<%@ Register src="../Controls/ctrl_userDetail.ascx" tagname="ctrl_userDetail" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:ctrl_userDetail ID="ctrl_userDetail1" runat="server" />
    
    </div>
    </form>
</body>
</html>
