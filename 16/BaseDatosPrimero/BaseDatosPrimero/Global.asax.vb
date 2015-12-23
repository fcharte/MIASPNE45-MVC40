' Nota: para obtener instrucciones sobre cómo habilitar el modo clásico de IIS6 o IIS7, 
' visite http://go.microsoft.com/?LinkId=9394802
Imports System.Web.Http

Public Class MvcApplication
    Inherits System.Web.HttpApplication

    Sub Application_Start()
        AreaRegistration.RegisterAllAreas()

        WebApiConfig.Register(GlobalConfiguration.Configuration)
        FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters)
        RouteConfig.RegisterRoutes(RouteTable.Routes)
    End Sub
End Class
