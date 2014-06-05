<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlDonors" runat="server"></asp:DropDownList>
        <asp:TextBox ID="txtDonation" runat="server" placeholder="Enter Donation"></asp:TextBox>
        <asp:Button ID="btnDonate" runat="server" Text="Donate" OnClick="btnDonate_Click" />

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Enabled="true" Interval="6000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
