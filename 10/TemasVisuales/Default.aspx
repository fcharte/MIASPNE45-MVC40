<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Theme="" StyleSheetTheme="Basico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Temas visuales</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2"
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Orientation="Horizontal"
            SkinID="Grande" StaticSubMenuIndent="10px">
            <StaticSelectedStyle BackColor="#507CD1" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#284E98" Font-Bold="False" ForeColor="White" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#284E98" Font-Bold="False" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="Principal" Value="Principal"></asp:MenuItem>
                <asp:MenuItem Text="Novedades" Value="Novedades"></asp:MenuItem>
                <asp:MenuItem Text="Cat&#225;logo" Value="Cat&#225;logo"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="117px" Width="162px"></asp:ListBox><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button" SkinID="Grande" /></div>
        
    </div>
    </form>
</body>
</html>
