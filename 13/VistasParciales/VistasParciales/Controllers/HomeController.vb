Public Class HomeController
    Inherits System.Web.Mvc.Controller

    '
    ' GET: /Home

    Function Index() As ActionResult
        Return View()
    End Function

    <ChildActionOnly>
    Function WebPart(id As String)
        Select Case id
            Case "Tipo1"
                Return PartialView("Calendario")
            Case "Tipo2"
                Return PartialView("Enlaces")
            Case Else
                Return PartialView("Vacio")
        End Select
    End Function

End Class