<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LinkedIn_Project.Presentation.WebForm1" %><%@ Register src="../Controls/ctrl_usersList.ascx" tagname="ctrl_usersList" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:ctrl_usersList ID="ctrl_usersList1" runat="server" />
    
    </div>
    </form>
</body>
</html>
