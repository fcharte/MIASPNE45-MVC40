@Code
    Layout = Nothing
End Code

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <div>
        @Html.MvcSiteMap.Menu(True, False, True)
        <h1 class="auto-style1">Anaya Multimedia<br />
        </h1>
        Bienvenido a la Web de Anaya Multimedia<br />
        <br />
        Seleccione la página a la que desea ir<br />
        <ul>
            <li>@Html.ActionLink("Examinar últimas novedades", "Novedades", "Navega")</li>
            <li>@Html.ActionLink("Catálogo completo", "Catalogo", "Navega")</li>
            <li>@Html.ActionLink("Descargas para suscriptores", "Descargas", "Navega")</li>
            <li>@Html.ActionLink("Actualizar suscripción", "Suscripcion", "Navega")</li>
        </ul>
    
    </div>
</body>
</html>
