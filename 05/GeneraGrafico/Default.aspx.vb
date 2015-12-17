Imports System.Drawing
Imports System.Drawing.Imaging

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Creamos el bitmap y obtenemos el
        ' objeto Graphics asociado
        Dim Grafico = New Bitmap(320, 200, PixelFormat.Format32bppRgb)
        Dim Superficie = Graphics.FromImage(Grafico)

        ' para dibujar en él un rectángulo,
        ' un óvalo y un texto
        Superficie.FillRectangle(Brushes.Red,
            Superficie.ClipBounds)
        Superficie.FillEllipse(Brushes.Blue,
            10, 10, 300, 180)
        Superficie.DrawString("ASP.NET 4.5",
         New Font("Courier New", 20,
         FontStyle.Italic Or FontStyle.Bold),
         Brushes.White, 74, 80)

        ' que introduciremos como respuesta
        Grafico.Save(Response.OutputStream,
           ImageFormat.Jpeg)

    End Sub
End Class
