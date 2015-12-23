@ModelType BaseDatosPrimero.libros

@Code
    ViewData("Title") = "Delete"
End Code

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
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
@Using Html.BeginForm()
    @Html.AntiForgeryToken()
    @<p>
        <input type="submit" value="Delete" /> |
        @Html.ActionLink("Back to List", "Index")
    </p>
End Using
