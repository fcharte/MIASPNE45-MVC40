
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        Button1.Enabled = CheckBox1.Checked
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
Response.Write("<em>")

        If Request.Cookies("FechaVisita") Is Nothing Then
            Response.Write("Ésta es tu primera visita")
        Else
            Response.Write("Tu última visita fue el " &
              Request.Cookies("FechaVisita").Value)
        End If

        Response.Write("</em>")

        Response.Cookies("FechaVisita").Value =
            DateTime.Now.ToString()
        Response.Cookies("FechaVisita").Expires =
            DateTime.Now.AddYears(1)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            Response.Write("<p>Has enviado el archivo " &
               FileUpload1.FileName & "<p>")
            Response.Write(
               "<code><textarea cols='64' rows='16'>")
            Response.BinaryWrite(FileUpload1.FileBytes)
            Response.Write("</textarea></code>")
        End If

    End Sub
End Class
