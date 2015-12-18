<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1 style="text-align: center">Anaya Multimedia</h1>
    <h2 style="text-align: center">Suscripción al boletín de novedades</h2>
    <form id="form1" runat="server">
    <div>
    
        Nombre <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nombre" ErrorMessage="Debe introducir su nombre completo"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Suscribirse" />
    
    </div>
    </form>
</body>
</html>
