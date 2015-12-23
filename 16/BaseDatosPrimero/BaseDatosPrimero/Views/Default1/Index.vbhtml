@ModelType IEnumerable(Of BaseDatosPrimero.libros)

@Code
    ViewData("Title") = "Index"
End Code
<header><style>
            table td {
                border: 1px solid black;
            }
        </style></header>
<h2>Lista de libros</h2>
<table>
    <tr>
        <th>@Html.DisplayNameFor(Function(model) model.codigo)</th>
        <th>@Html.DisplayNameFor(Function(model) model.signatura)</th>
        <th>@Html.DisplayNameFor(Function(model) model.titulo)</th>
        <th>@Html.DisplayNameFor(Function(model) model.autor)</th>
        <th>@Html.DisplayNameFor(Function(model) model.disponible)</th>
        <th></th>
    </tr>

@For Each item In Model
    @<tr>
        <td>@Html.DisplayFor(Function(modelItem) item.codigo)</td>
        <td>@Html.DisplayFor(Function(modelItem) item.signatura)</td>
        <td>@Html.DisplayFor(Function(modelItem) item.titulo)</td>
        <td>@Html.DisplayFor(Function(modelItem) item.autor)</td>
        <td>@Html.DisplayFor(Function(modelItem) item.disponible)</td>
    </tr>
Next

</table>
