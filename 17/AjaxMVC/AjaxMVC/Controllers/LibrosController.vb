Public Class LibrosController
    Inherits System.Web.Mvc.Controller

    Private db As New BibliotecaEntities
    '
    ' GET: /Libros

    Function Index() As ActionResult
        Return View(db.libros.ToList)
    End Function

    Function Detalles(Id As Integer)
        Return PartialView(db.libros.Find(Id))
    End Function

End Class