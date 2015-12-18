
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Write("<table border='1' " &
  "style='font-family: monospace'>" &
  "<tr><th>Control</th><th>Contenido</th></tr>")

        For Each Variable In Request.Params
            Response.Write( _
                  "<tr><td>" & Variable & "</td><td>" &
                  Request.Form(Variable) & "</td></tr>")
        Next

        Response.Write("<table>")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write(Nombre.Text)
        Response.Write(Direccion.Text)

    End Sub
End Class
