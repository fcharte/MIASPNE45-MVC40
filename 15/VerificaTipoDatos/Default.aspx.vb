Imports System.Data.Objects
Imports System.Data.Entity

Partial Class _Default
    Inherits System.Web.UI.Page

    Public Function GetLibros() As IQueryable(Of libros)
        Dim contexto As BibliotecaEntities = New BibliotecaEntities
        Dim libros = From libro In contexto.libros
                     Select libro Order By libro.signatura
        Return libros
    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
