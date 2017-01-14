<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_register.ascx.cs" Inherits="LinkedIn_Project.Controls.ctrl_register" %>
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CancelDestinationPageUrl="~/Home.aspx" ContinueDestinationPageUrl="~/Home.aspx" Height="357px" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="267px" >
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>

