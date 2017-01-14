<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LinkedIn_Project.Presentation.Register" %>

<%@ Register src="../Controls/ctrl_register.ascx" tagname="ctrl_register" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:ctrl_register ID="ctrl_register1" runat="server" />
    
    </div>
    </form>
</body>
</html>
