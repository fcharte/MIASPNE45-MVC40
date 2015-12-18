
Partial Class Configuracion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Write("Reservada confirmada. Salida: " &
  Session("Salida") & ", Vuelta: " &
  Session("Vuelta"))

    End Sub
End Class
