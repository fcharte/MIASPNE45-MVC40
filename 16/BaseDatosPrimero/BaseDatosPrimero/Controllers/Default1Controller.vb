Imports System.Data.Entity

Public Class Default1Controller
    Inherits System.Web.Mvc.Controller

    Private db As New BibliotecaEntities

    '
    ' GET: /Default1/

    Function Index() As ActionResult
        Dim filas = From fila In db.libros
                    Select fila
                    Order By fila.codigo
                    Where fila.autor = "Charte, Francisco"

        ViewBag.Consulta = "Libros de un autor"

        Dim unLibro = New libros With {.codigo = 14, .autor = "Nombre"}
        db.libros.Add(unLibro)


        Return View(db.libros.ToList())
        Return View(filas)
    End Function

    '
    ' GET: /Default1/Details/5

    Function Details(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' GET: /Default1/Create

    Function Create() As ActionResult
        Return View()
    End Function

    '
    ' POST: /Default1/Create

    <HttpPost()> _
    <ValidateAntiForgeryToken()> _
    Function Create(ByVal libros As libros) As ActionResult
        If ModelState.IsValid Then
            db.libros.Add(libros)
            db.SaveChanges()
            Return RedirectToAction("Index")
        End If

        Return View(libros)
    End Function

    '
    ' GET: /Default1/Edit/5

    Function Edit(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' POST: /Default1/Edit/5

    <HttpPost()> _
    <ValidateAntiForgeryToken()> _
    Function Edit(ByVal libros As libros) As ActionResult
        If ModelState.IsValid Then
            db.Entry(libros).State = EntityState.Modified
            db.SaveChanges()
            Return RedirectToAction("Index")
        End If

        Return View(libros)
    End Function

    '
    ' GET: /Default1/Delete/5

    Function Delete(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' POST: /Default1/Delete/5

    <HttpPost()> _
    <ActionName("Delete")> _
    <ValidateAntiForgeryToken()> _
    Function DeleteConfirmed(ByVal id As Integer) As RedirectToRouteResult
        Dim libros As libros = db.libros.Find(id)
        db.libros.Remove(libros)
        db.SaveChanges()
        Return RedirectToAction("Index")
    End Function

    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        db.Dispose()
        MyBase.Dispose(disposing)
    End Sub

End Class