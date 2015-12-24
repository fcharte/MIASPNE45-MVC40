<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style type="text/css">
      .style1 {
        text-align: center;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div><h1 class="style1">
      ASP.NET y AJAX</h1>
    Los elementos que hay debajo de este texto se encuentran incluidos en un panel que se actualiza
    por sí mismo, de forma que no es necesario actualizar la página completa para, seleccionada una fecha,
    obtener las entradas correspondientes a la misma.&nbsp;
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
          <ContentTemplate><table><tr><td>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
              BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" 
              ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px" 
              BorderStyle="Solid" CellSpacing="1">
              <SelectedDayStyle BackColor="#333399" ForeColor="White" />
              <TodayDayStyle BackColor="#999999" ForeColor="White" />
              <OtherMonthDayStyle ForeColor="#999999" />
              <DayStyle BackColor="#CCCCCC" />
              <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
              <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                Height="8pt" />
              <TitleStyle BackColor="#333399" 
                Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" 
                Height="12pt" />
            </asp:Calendar>
            <asp:Timer ID="Timer1" runat="server">
            </asp:Timer>
            </td><td>Entradas<br />
              <asp:ListBox ID="ListBox1" runat="server" Height="154px" Width="187px">
              </asp:ListBox><br />
              <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                  Recuperando ...
                </ProgressTemplate>
              </asp:UpdateProgress>
            </td></tr></table>
          </ContentTemplate>
    </asp:UpdatePanel>
    <p>
      Los elementos siguientes tienen una funcionalidad equivalente a los anteriores, 
      pero no se encuentran incluidos en un UpdatePanel y, en consecuencia, provocan 
      una renovación de la página completa, más lenta que la actualización con 
      técnicas AJAX.
    </p>
    <table><tr><td>
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
              BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" 
              ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px" 
              BorderStyle="Solid" CellSpacing="1">
              <SelectedDayStyle BackColor="#333399" ForeColor="White" />
              <TodayDayStyle BackColor="#999999" ForeColor="White" />
              <OtherMonthDayStyle ForeColor="#999999" />
              <DayStyle BackColor="#CCCCCC" />
              <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
              <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                Height="8pt" />
              <TitleStyle BackColor="#333399" 
                Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" 
                Height="12pt" />
            </asp:Calendar>
            </td><td>Entradas<br />
              <asp:ListBox ID="ListBox2" runat="server" Height="154px" Width="187px">
              </asp:ListBox>
            </td></tr></table>
    </form>
</body>
</html>
