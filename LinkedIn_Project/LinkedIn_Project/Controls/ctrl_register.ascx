<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_register.ascx.cs" Inherits="LinkedIn_Project.Controls.ctrl_register" %>
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CancelDestinationPageUrl="~/Home.aspx" ContinueDestinationPageUrl="~/Home.aspx" >
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>

