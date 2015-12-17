Imports System.Data.Entity

Public Class LibrosController
    Inherits System.Web.Mvc.Controller

    Private db As New BibliotecaEntities1

    '
    ' GET: /Libros/

    Function Index() As ActionResult

        Return View(db.libros.ToList())
    End Function

    '
    ' GET: /Libros/Details/5

    Function Details(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' GET: /Libros/Create

    Function Create() As ActionResult
        Return View()
    End Function

    '
    ' POST: /Libros/Create

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
    ' GET: /Libros/Edit/5

    Function Edit(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' POST: /Libros/Edit/5

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
    ' GET: /Libros/Delete/5

    Function Delete(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim libros As libros = db.libros.Find(id)
        If IsNothing(libros) Then
            Return HttpNotFound()
        End If
        Return View(libros)
    End Function

    '
    ' POST: /Libros/Delete/5

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