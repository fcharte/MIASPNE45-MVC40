Public Class HomeController
    Inherits System.Web.Mvc.Controller

    '
    ' GET: /Home

    Function Index() As ActionResult
        Return View()
    End Function

    Function Novedades(id As String) As ActionResult
        ViewData("titulo") = id
        Return View()
    End Function

End Class