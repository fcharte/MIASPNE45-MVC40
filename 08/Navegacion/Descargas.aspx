<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Descargas.aspx.vb" Inherits="Descargas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<h1 class="auto-style1">Anaya Multimedia<br />
        </h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#990000" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
        </asp:SiteMapPath>
        <br />
        <br />
    
        Descargas para suscriptores de Anaya Multimedia<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="window.history.back(1); return false;" Text="Atrás" UseSubmitBehavior="False" />
    
    </div>
    </form></body>
</html>
