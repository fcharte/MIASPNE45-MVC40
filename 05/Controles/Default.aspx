<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        #Checkbox1 {
            width: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Controles HTML:
        <input id="Text1" type="text" />
        <input id="Checkbox1" type="checkbox" />Márcame&nbsp;
        <input id="Button1" type="button" value="button" /><br />
        <br />
        Controles ASP.NET: <asp:TextBox ID="TextBox1" runat="server" BackColor="#663300" BorderStyle="Solid" BorderWidth="1px" Height="191px" Width="433px"></asp:TextBox>
&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Márcame" AutoPostBack="True" BorderStyle="Dotted" BorderColor="Black"
  BorderWidth="1px" BackColor="#FFE0C0"
/>
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </form>
</body>
</html>
