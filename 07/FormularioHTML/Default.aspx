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
    
        <h1>Formulario de suscripción<br />
        </h1>
        <p>
            Nombre
            <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
        </p>
        <p>
            Dirección
            <asp:TextBox ID="Direccion" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Enviar" />
        </p>
    
    </div>
    </form>
</body>
</html>
