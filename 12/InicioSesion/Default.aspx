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
    
                     <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                Bienvenido
                <asp:LoginName ID="LoginName1" runat="server" />
                <br />
                <asp:LoginStatus ID="LoginStatus2" runat="server" />
            </LoggedInTemplate>
            <AnonymousTemplate>
                Inicie sesión para acceder a los contenidos exclusivos.<asp:LoginStatus ID="LoginStatus1"
                    runat="server" />
            </AnonymousTemplate>
        </asp:LoginView>
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ContenidoExclusivo/Descargas.aspx">Descargas</asp:HyperLink>

    
    </div>
    </form>
</body>
</html>
