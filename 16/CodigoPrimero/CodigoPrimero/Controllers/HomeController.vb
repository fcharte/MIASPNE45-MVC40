Imports System.Data.Entity

Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Private db As New TareasContext

    '
    ' GET: /Home/

    Function Index() As ActionResult
        Return View(db.Usuarios.ToList())
    End Function

    '
    ' GET: /Home/Details/5

    Function Details(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim usuario As Usuario = db.Usuarios.Find(id)
        If IsNothing(usuario) Then
            Return HttpNotFound()
        End If
        Return View(usuario)
    End Function

    '
    ' GET: /Home/Create

    Function Create() As ActionResult
        Return View()
    End Function

    '
    ' POST: /Home/Create

    <HttpPost()> _
    <ValidateAntiForgeryToken()> _
    Function Create(ByVal usuario As Usuario) As ActionResult
        If ModelState.IsValid Then
            db.Usuarios.Add(usuario)
            db.SaveChanges()
            Return RedirectToAction("Index")
        End If

        Return View(usuario)
    End Function

    '
    ' GET: /Home/Edit/5

    Function Edit(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim usuario As Usuario = db.Usuarios.Find(id)
        If IsNothing(usuario) Then
            Return HttpNotFound()
        End If
        Return View(usuario)
    End Function

    '
    ' POST: /Home/Edit/5

    <HttpPost()> _
    <ValidateAntiForgeryToken()> _
    Function Edit(ByVal usuario As Usuario) As ActionResult
        If ModelState.IsValid Then
            db.Entry(usuario).State = EntityState.Modified
            db.SaveChanges()
            Return RedirectToAction("Index")
        End If

        Return View(usuario)
    End Function

    '
    ' GET: /Home/Delete/5

    Function Delete(Optional ByVal id As Integer = Nothing) As ActionResult
        Dim usuario As Usuario = db.Usuarios.Find(id)
        If IsNothing(usuario) Then
            Return HttpNotFound()
        End If
        Return View(usuario)
    End Function

    '
    ' POST: /Home/Delete/5

    <HttpPost()> _
    <ActionName("Delete")> _
    <ValidateAntiForgeryToken()> _
    Function DeleteConfirmed(ByVal id As Integer) As RedirectToRouteResult
        Dim usuario As Usuario = db.Usuarios.Find(id)
        db.Usuarios.Remove(usuario)
        db.SaveChanges()
        Return RedirectToAction("Index")
    End Function

    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        db.Dispose()
        MyBase.Dispose(disposing)
    End Sub

End Class