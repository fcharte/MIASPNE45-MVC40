Imports System.Web.DynamicData

Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        Dim visibleTables As IList = ASP.global_asax.DefaultModel.VisibleTables
        If visibleTables.Count = 0 Then
            Throw New InvalidOperationException("No hay tablas accesibles. " &
                "Asegúrese de que hay al menos un modelo de datos registrado en Global.asax " &
                "y de que está habilitada la técnica scaffolding, o bien implemente páginas personalizadas.")
        End If
        Menu1.DataSource = visibleTables
        Menu1.DataBind()
    End Sub
    
End Class
