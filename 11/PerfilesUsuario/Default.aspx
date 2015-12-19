<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      <h1 style="text-align: center">
        Perfiles ASP.NET 4.5</h1>
    
    </div>
    <br />
    <span class="style1">Lista de artículos disponibles</span><asp:CheckBoxList 
      ID="ListaArticulos" runat="server" AutoPostBack="True" BackColor="#FFFF99" 
      BorderStyle="Dotted" CellPadding="1" CellSpacing="1" Font-Names="Arial" 
      ForeColor="#0033CC">
      <asp:ListItem>Gestión de perfiles en ASP.NET 4.5</asp:ListItem>
      <asp:ListItem>Registro y administración de usuarios</asp:ListItem>
      <asp:ListItem>Sitios Web personalizables por el usuario</asp:ListItem>
      <asp:ListItem>Introducción a ADO.NET</asp:ListItem>
      <asp:ListItem>Enlace a datos en aplicaciones que usan formularios Web</asp:ListItem>
      <asp:ListItem>Enlace a datos en aplicaciones basadas en MVC</asp:ListItem>
      <asp:ListItem>ASP.NET y AJAX</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" 
      GroupingText="Datos personales" Height="162px">
      ID de inicio de sesión
      <asp:TextBox ID="IDInicioSesion" runat="server" Enabled="False" Width="202px"></asp:TextBox>
      <br />
      <br />
      Nombre
      <asp:TextBox ID="Nombre" runat="server" Width="187px"></asp:TextBox>
      <br />
      <br />
      Apellidos
      <asp:TextBox ID="Apellidos" runat="server" Width="179px"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Actualizar perfil" />
      <br />
    </asp:Panel>
    </form>
</body>
</html>
