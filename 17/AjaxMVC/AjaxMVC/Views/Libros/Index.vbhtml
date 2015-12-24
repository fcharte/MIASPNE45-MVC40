@ModelType IEnumerable(Of AjaxMVC.libros)

@Code
    ViewData("Title") = "Index"
End Code

<h2>Index</h2>

<p>
    @Html.ActionLink("Create New", "Create")
</p>

<div>
<div id="Lista">
    <table>
        <tr>
            <th>Código</th>
            <th>Título</th>
        </tr>

        @For Each item In Model
            Dim currentItem = item
            @<tr>
                <td>@Html.DisplayFor(Function(modelItem) currentItem.codigo)</td>
                <td>@Html.DisplayFor(Function(modelItem) currentItem.titulo)</td>
                <td>
                    <button class="Detalles" id="@currentItem.codigo">Detalles</button></td>
            </tr>
        Next
    </table>
</div>

<div id="Detalles">
</div>

</div>

<script>
    $('.Detalles').click(this, function () {
        $.ajax({
            url: '/Libros/Detalles',
            type: 'GET',
            data: { Id: this.id }
        })
       .success(function (detalles) {
           $('#Detalles').html(detalles);
       })
       .error(function (request, status, error) {
           alert(request.responseText);
       })
    });
</script>
