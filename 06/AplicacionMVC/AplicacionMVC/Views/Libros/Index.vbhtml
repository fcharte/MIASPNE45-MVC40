@ModelType IEnumerable(Of AplicacionMVC.libros)

@Code
    ViewData("Title") = "Index"
End Code

<h2>Index</h2>

<p>
    @Html.ActionLink("Create New", "Create")
</p>
<table>
    <tr>
        <th>
            @Html.DisplayNameFor(Function(model) model.codigo)
        </th>
        <th>
            @Html.DisplayNameFor(Function(model) model.signatura)
        </th>
        <th>
            @Html.DisplayNameFor(Function(model) model.titulo)
        </th>
        <th>
            @Html.DisplayNameFor(Function(model) model.autor)
        </th>
        <th>
            @Html.DisplayNameFor(Function(model) model.disponible)
        </th>
        <th></th>
    </tr>

@For Each item In Model
    Dim currentItem = item
    @<tr>
        <td>
            @Html.DisplayFor(Function(modelItem) currentItem.codigo)
        </td>
        <td>
            @Html.DisplayFor(Function(modelItem) currentItem.signatura)
        </td>
        <td>
            @Html.DisplayFor(Function(modelItem) currentItem.titulo)
        </td>
        <td>
            @Html.DisplayFor(Function(modelItem) currentItem.autor)
        </td>
        <td>
            @Html.DisplayFor(Function(modelItem) currentItem.disponible)
        </td>
        <td>
            @Html.ActionLink("Edit", "Edit", New With {.id = currentItem.codigo}) |
            @Html.ActionLink("Details", "Details", New With {.id = currentItem.codigo}) |
            @Html.ActionLink("Delete", "Delete", New With {.id = currentItem.codigo})
        </td>
    </tr>
Next

</table>
