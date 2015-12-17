<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .Centrado {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <h1 class="Centrado">Anaya Multimedia
        </h1>
        <p>
          &nbsp;</p>
        <div style="BORDER-RIGHT: 1px solid; PADDING-RIGHT: 0.3em; BORDER-TOP: 1px solid; PADDING-LEFT: 0.3em; PADDING-BOTTOM: 0.3em; BORDER-LEFT: 1px solid; WIDTH: 451px; PADDING-TOP: 0.3em; BORDER-BOTTOM: 1px solid; HEIGHT: 226px; BACKGROUND-COLOR: #ffe0c0">
            <p>
                Nombre
                <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                Dirección de correo electrónico &nbsp;<asp:TextBox id="TextBox2" accessKey="d" runat="server" Width="150px" Height="2em"></asp:TextBox>
            </p>
            <p>
                <asp:CheckBox id="CheckBox1" runat="server" 
                    Text="Recibir novedades de Anaya Multimedia" AutoPostBack="True" 
                    OnCheckedChanged="CheckBox1_CheckedChanged"></asp:CheckBox>
            </p>
            <p>
                Fotografía
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
            <p>
                <asp:Button id="Button1" runat="server" Text="Enviar" Enabled="False" 
                    Width="73px"></asp:Button>
            </p>
    </div>
    </form>
</body>
</html>
