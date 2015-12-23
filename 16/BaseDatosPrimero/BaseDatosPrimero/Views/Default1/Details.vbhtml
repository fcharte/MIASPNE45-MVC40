@ModelType BaseDatosPrimero.libros

@Code
    ViewData("Title") = "Details"
End Code

<h2>Details</h2>

<fieldset>
    <legend>libros</legend>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.codigo)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.codigo)
    </div>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.signatura)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.signatura)
    </div>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.titulo)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.titulo)
    </div>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.autor)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.autor)
    </div>

    <div class="display-label">
        @Html.DisplayNameFor(Function(model) model.disponible)
    </div>
    <div class="display-field">
        @Html.DisplayFor(Function(model) model.disponible)
    </div>
</fieldset>
<p>
    @*@Html.ActionLink("Edit", "Edit", New With {.id = Model.PrimaryKey}) |*@
    @Html.ActionLink("Back to List", "Index")
</p>
