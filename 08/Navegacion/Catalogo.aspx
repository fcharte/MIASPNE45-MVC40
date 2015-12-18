<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Catalogo.aspx.vb" Inherits="Catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1 class="auto-style1">Anaya Multimedia<br />
        </h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        <br />
        <br />
    
        Catálogo de publicaciones de Anaya Multiedia<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="window.history.back(1); return false;" Text="Atrás" UseSubmitBehavior="False" />
    
    </div>
    </form>
</body>
</html>
