<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>@ViewData("Title")</title>

    <style type="text/css">
        .title {
            text-align: center;
        }

        .lateral
        {
            float: left;
            height: 425px;
            width: 20%;
        }

        ul#menu {
            font-size: 1.3em;
            font-weight: 600;
            margin: 0 0 5px;
            padding: 0;
            text-align: right;
        }

            ul#menu li {
                display: inline;
                list-style: none;
                padding-left: 15px;
            }

                ul#menu li a {
                    background: none;
                    color: #999;
                    text-decoration: none;
                }

                    ul#menu li a:hover {
                        color: #333;
                        text-decoration: none;
                    }
    </style>
</head>
<body>
    <header>
        <h1 class="title">Anaya Multimedia</h1>
        <nav>
            <ul id="menu">
                <li>@Html.ActionLink("Inicio", "Index", "Home")</li>
                <li>@Html.ActionLink("Novedades", "Novedades", "Home")</li>
                <li>@Html.ActionLink("Catalogo", "Catalogo", "Home")</li>
            </ul>
        </nav>
    </header>
    <div class="lateral">
        @RenderSection("anuncio", required:=False)
    </div>
    <div>
        @RenderBody()
    </div>

    <div class="title">
        (c) 2013 - Grupo Anaya
    </div>
</body>
</html>
