@Code
    Layout = Nothing
End Code

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Novedades</title>
</head>
<body>
    @Html.MvcSiteMap.SiteMapPath
    <div>
        <h1 class="auto-style1">Anaya Multimedia<br /></h1>
        <p>Últimas novedades publicadas por la editorial</p>

        <button onclick="javascript:window.history.back(1); return false;">Atrás</button>
        
    </div>
</body>
</html>
