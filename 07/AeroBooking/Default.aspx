<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .style2 {
            text-align: center;
        }
    </style>
<script type="text/javascript">
    // Función de validación a medida
    function CompruebaReserva(source, arguments) {
        // Se recupera el contenido del
        // TextBox FechaSalida
        var FIni = $("#FechaSalida").attr("value");
        // separando el día, mes y año
        var dd = parseInt(FIni.substring(0, 2), 10);
        var mm = parseInt(FIni.substring(3, 5), 10);
        var aaaa = parseInt(FIni.substring(6), 10);
        // para convertirlo en fecha de JavaScript
        FIni = new Date(aaaa, mm - 1, dd);

        // Lo mismo para la fecha de vuelta
        var FFin = $("#FechaVuelta").attr("value");
        dd = parseInt(FFin.substring(0, 2), 10);
        mm = parseInt(FFin.substring(3, 5), 10);
        aaaa = parseInt(FFin.substring(6), 10);

        FFin = new Date(aaaa, mm - 1, dd);

        // Se calculan los días transcurridos entre
        // ambas fechas
        var Dias = Math.ceil((FFin.getTime() -
                  FIni.getTime()) / (24 * 3600 * 1000));

        // Comprobar que el valor sea superior a 3
        // días y menor a 31 y que sea múltiplo de 3
        if (Dias >= 3 && Dias <= 31 && Dias % 3 == 0)
            arguments.IsValid = true;
        else
            arguments.IsValid = false;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align: center">AeroBooking</h1>
<table style="width: 100%">
  <tr>
    <td class="style2" colspan="2">
      Reserva de billetes
    </td>
  </tr>
  <tr>
    <td>
      <asp:Calendar ID="FSalida" runat="server"
       BackColor="White" BorderColor="#999999"
       CellPadding="4" DayNameFormat="Shortest"
       Font-Names="Verdana" Font-Size="8pt"
       ForeColor="Black" Height="180px"
       Width="200px" Caption="Fecha de salida"
       Style="text-align: center">
       <SelectedDayStyle BackColor="#666666"
        Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <WeekendDayStyle BackColor="#FFFFCC" />
        <TodayDayStyle BackColor="#CCCCCC"
            ForeColor="Black" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#CCCCCC"
           Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#999999"
         BorderColor="Black" Font-Bold="True" />
      </asp:Calendar>
      <asp:TextBox ID="FechaSalida" runat="server" />
      <br />
      <asp:RangeValidator ID="RangeValidator1"
      runat="server" ControlToValidate="FechaSalida"
      ErrorMessage="La fecha de salida debe ser posterior al día de hoy y dentro del plazo de 30 días"
        Type="Date" ValidationGroup="Reserva">Seleccione una fecha válida</asp:RangeValidator>
    </td>
    <td>
      <asp:Calendar ID="FVuelta" runat="server"
      BackColor="White" BorderColor="#999999"
      CellPadding="4" DayNameFormat="Shortest"
      Font-Names="Verdana" Font-Size="8pt"
      ForeColor="Black" Height="180px" Width="200px"
      Caption="Fecha de vuelta"
      Style="text-align: center">
       <SelectedDayStyle BackColor="#666666"
        Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <WeekendDayStyle BackColor="#FFFFCC" />
        <TodayDayStyle BackColor="#CCCCCC"
            ForeColor="Black" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#CCCCCC"
          Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#999999"
         BorderColor="Black" Font-Bold="True" />
      </asp:Calendar>
      <asp:TextBox ID="FechaVuelta" runat="server" />
      <br />
      <asp:CompareValidator ID="CompareValidator1"
       runat="server"
       ErrorMessage="La fecha de vuelta debe ser posterior a la de salida"
       ControlToValidate="FechaVuelta"
       ControlToCompare="FechaSalida"
       Operator="GreaterThan"
       Type="Date" ValidationGroup="Reserva">Seleccione una fecha válida</asp:CompareValidator>
    </td>
  </tr>
</table>
<asp:Button ID="Button1" runat="server"
   Text="Efectuar reserva" ValidationGroup="Reserva" />
<br />
<asp:Label ID="Confirmacion" runat="server">
</asp:Label>
    
        <br />
        <br />
        Recibir ofertas por correo electrónico
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Text="Suscribirse" ValidationGroup="Suscripcion" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe facilitar una dirección de correo electrónico para recibir ofertas" ValidationGroup="Suscripcion">Introduzca su dirección de correo electrónico</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Los vuelos de vuelta son cada 3 días a partir de la fecha de salida, con una diferencia máxima de 30 días" ClientValidationFunction="CompruebaReserva" ValidationGroup="Reserva"> </asp:CustomValidator>
    
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Dashed" ShowMessageBox="True" />
    </form>
</body>
</html>
