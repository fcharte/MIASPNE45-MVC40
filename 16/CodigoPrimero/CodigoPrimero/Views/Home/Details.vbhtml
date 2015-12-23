@ModelType CodigoPrimero.Usuario

@Code
    ViewData("Title") = "Details"
End Code

<h2>Details</h2>

<fieldset>
    <legend>Usuario</legend>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.Nombre)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.Nombre)
    </div>
</fieldset>
<p>

    @Html.ActionLink("Edit", "Edit", New With {.id = Model.Id}) |
    @Html.ActionLink("Back to List", "Index")
</p>
