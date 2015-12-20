<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
        }
        .auto-style2 {
            width: 405px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    
      <h1 style="text-align: center">
        Personalización ASP.NET</h1>
    
    </div>
    <asp:WebPartManager ID="WebPartManager1" runat="server">
    </asp:WebPartManager>
    <table class="style1">
      <tr>
        <td class="style2">
<asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC" 
  Font-Names="Verdana" HeaderText="Panel izquierdo" Padding="6">
  <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
  <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
  <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
  </TitleBarVerbStyle>
  <MenuLabelHoverStyle ForeColor="#D1DDF1"></MenuLabelHoverStyle>
  <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
  </MenuPopupStyle>
  <MenuVerbStyle BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" ForeColor="White">
  </MenuVerbStyle>
  <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White">
  </PartTitleStyle>
  <ZoneTemplate>
    <asp:BulletedList ID="BulletedList1" runat="server" Title="Secciones" 
      BulletStyle="Circle" DisplayMode="HyperLink">
      <asp:ListItem Value="Novedades"></asp:ListItem>
      <asp:ListItem Value="Próxima aparición"></asp:ListItem>
      <asp:ListItem Value="Catálogo general"></asp:ListItem>
      <asp:ListItem Value="Soporte al lector"></asp:ListItem>
    </asp:BulletedList>
    <asp:Panel ID="Panel1" runat="server" Title="Sitios relacionados">
      <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
      <br />
      <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
    </asp:Panel>
  </ZoneTemplate>
      <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333">
      </MenuVerbHoverStyle>
      <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333">
      </PartChromeStyle>
      <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC" 
    BackColor="Black">
      </HeaderStyle>
      <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
    </asp:WebPartZone>
          <br />
          <asp:CatalogZone ID="CatalogZone1" runat="server" BackColor="#EFF3FB" 
            BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Padding="6">
            <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" ForeColor="#333333">
            </HeaderVerbStyle>
            <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White">
            </PartTitleStyle>
            <FooterStyle HorizontalAlign="Right" BackColor="#D1DDF1"></FooterStyle>
            <PartChromeStyle BorderColor="#D1DDF1" BorderWidth="1px" BorderStyle="Solid">
            </PartChromeStyle>
            <PartLinkStyle Font-Size="0.8em"></PartLinkStyle>
            <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333">
            </InstructionTextStyle>
            <ZoneTemplate>
              <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
<asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
  <WebPartsTemplate>
    <asp:DropDownList Title="Tamaño de letra" ID="DropDownList1" 
      runat="server" BorderStyle="Solid">
      <asp:ListItem Value="Pequeña"></asp:ListItem>
      <asp:ListItem Value="Normal"></asp:ListItem>
      <asp:ListItem Value="Grande"></asp:ListItem>
    </asp:DropDownList>
    <asp:Calendar Title="Calendario multicolor" ID="Calendar2" runat="server" BackColor="#FFFFCC" 
      BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
      Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
      ShowGridLines="True" Width="220px">
      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
      <SelectorStyle BackColor="#FFCC66" />
      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
      <OtherMonthDayStyle ForeColor="#CC9966" />
      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
        ForeColor="#FFFFCC" />
    </asp:Calendar>
    <br />
  </WebPartsTemplate>
</asp:DeclarativeCatalogPart>
            </ZoneTemplate>
            <LabelStyle Font-Size="0.8em" ForeColor="#333333"></LabelStyle>
            <SelectedPartLinkStyle Font-Size="0.8em"></SelectedPartLinkStyle>
            <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            </VerbStyle>
            <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" Font-Size="0.8em" ForeColor="#333333">
            </HeaderStyle>
            <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            </EditUIStyle>
            <PartStyle BorderColor="#EFF3FB" BorderWidth="5px"></PartStyle>
            <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333"></EmptyZoneTextStyle>
          </asp:CatalogZone>
          <asp:Button ID="Button1" runat="server" Text="Abrir catálogo" 
            style="height: 26px" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Editar interfaz" />
        </td>
        <td width="40%">
          Al existir varias zonas personalizables en la página, en este ejemplo una a la 
          izquierda y otra a la derecha, existe la posibilidad de mover los componentes de 
          una a otra zona, cambiando la distribución.<br />
          <br />
          <asp:EditorZone ID="EditorZone1" runat="server" BackColor="#EFF3FB" 
            BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Padding="6">
            <FooterStyle HorizontalAlign="Right" BackColor="#D1DDF1"></FooterStyle>
            <PartTitleStyle Font-Bold="True" Font-Size="0.8em" ForeColor="#333333">
            </PartTitleStyle>
            <PartChromeStyle BorderColor="#D1DDF1" BorderWidth="1px" BorderStyle="Solid">
            </PartChromeStyle>
            <PartStyle BorderColor="#EFF3FB" BorderWidth="5px"></PartStyle>
            <LabelStyle Font-Size="0.8em" ForeColor="#333333"></LabelStyle>
            <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            </VerbStyle>
            <ErrorStyle Font-Size="0.8em"></ErrorStyle>
            <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333"></EmptyZoneTextStyle>
            <ZoneTemplate>
              <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
              <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
            </ZoneTemplate>
            <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
            </EditUIStyle>
            <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" Font-Size="0.8em" ForeColor="#333333">
            </HeaderStyle>
            <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" ForeColor="#333333">
            </HeaderVerbStyle>
            <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333">
            </InstructionTextStyle>
          </asp:EditorZone>
        </td>
        <td>
         
        <asp:WebPartZone ID="WebPartZone2" runat="server" BorderColor="#CCCCCC" 
          Font-Names="Verdana" Padding="6" HeaderText="Panel derecho">
          <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
          <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
          <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
          </TitleBarVerbStyle>
          <MenuLabelHoverStyle ForeColor="#D1DDF1"></MenuLabelHoverStyle>
          <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
          </MenuPopupStyle>
          <MenuVerbStyle BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" ForeColor="White">
          </MenuVerbStyle>
          <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White">
          </PartTitleStyle>
          <ZoneTemplate>
            <asp:Calendar Title="Calendario" ID="Calendar1" runat="server" BackColor="White" 
              BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
              Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
              Width="200px">
              <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
              <SelectorStyle BackColor="#CCCCCC" />
              <WeekendDayStyle BackColor="#FFFFCC" />
              <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
              <OtherMonthDayStyle ForeColor="#808080" />
              <NextPrevStyle VerticalAlign="Bottom" />
              <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
              <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            </asp:Calendar>
            <asp:Image ID="Image2" Title="Agenda" runat="server" 
              ImageUrl="Cal.png" ImageAlign="Middle" />
          </ZoneTemplate>
          <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333">
          </MenuVerbHoverStyle>
          <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333">
          </PartChromeStyle>
          <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC" 
            BackColor="Black">
          </HeaderStyle>
          <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
        </asp:WebPartZone>
</td>      </tr>
    </table>    </form> 
</body>
</html>
