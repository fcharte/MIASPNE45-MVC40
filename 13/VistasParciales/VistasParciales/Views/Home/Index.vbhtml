@Code
    Layout = Nothing
End Code

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
    <style>
        .Contenedor {
            float: left;
            margin: 1em;
            width: 30%;
        }

        .WebPart {
            background-color: aqua;
            width: 160px;
            border: 1px solid black;
            padding: 1em;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="Contenedor">
        @Html.Action("WebPart", "Home", New With {.id = "Tipo1"})
        @Html.Action("WebPart", "Home", New With {.id = "Tipo2"})
    </div>
        <div class="Contenedor">
            <h1>Contenido principal de la vista</h1>
            <p>Esta página utiliza una combinación de controladores hijo y vistas parciales para agregar elementos reutilizables.</p>
        </div>
    <div class="Contenedor">
        @Html.Action("WebPart", "Home", New With {.id = "Tipo2"})
    </div>
</body>
</html>
