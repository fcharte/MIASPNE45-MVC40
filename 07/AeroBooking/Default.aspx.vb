
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            RangeValidator1.MinimumValue =
              DateTime.Now.AddDays(1).ToShortDateString
            RangeValidator1.MaximumValue =
              DateTime.Now.AddMonths(1).ToShortDateString
            FechaSalida.Text =
              FSalida.SelectedDate.ToShortDateString
            FechaVuelta.Text =
              FVuelta.SelectedDate.ToShortDateString
        End If

    End Sub

    Protected Sub FSalida_SelectionChanged(sender As Object, e As EventArgs) Handles FSalida.SelectionChanged
        FechaSalida.Text =
         FSalida.SelectedDate.ToShortDateString

    End Sub

    Protected Sub FVuelta_SelectionChanged(sender As Object, e As EventArgs) Handles FVuelta.SelectionChanged
        FechaVuelta.Text = FVuelta.SelectedDate.ToShortDateString
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            Session("Salida") = FechaSalida.Text
            Session("Vuelta") = FechaVuelta.Text
            Response.Redirect("Confirmacion.aspx")
        End If

    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim Dias = (Date.Parse(FechaVuelta.Text) -
            Date.Parse(FechaSalida.Text)).Days

        args.IsValid = Dias >= 3 And Dias < 31 And
                       Dias Mod 3 = 0

    End Sub
End Class
