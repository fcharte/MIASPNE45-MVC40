
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        WebPartManager1.DisplayMode = WebPartManager.CatalogDisplayMode
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        WebPartManager1.DisplayMode = WebPartManager.EditDisplayMode
    End Sub
End Class
