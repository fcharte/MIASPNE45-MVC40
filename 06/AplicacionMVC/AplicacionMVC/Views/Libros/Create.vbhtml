@ModelType AplicacionMVC.libros

@Code
    ViewData("Title") = "Create"
End Code

<h2>Create</h2>

@Using Html.BeginForm()
    @Html.AntiForgeryToken()
    @Html.ValidationSummary(True)

    @<fieldset>
        <legend>libros</legend>

        <div class="editor-label">
            @Html.LabelFor(Function(model) model.codigo)
        </div>
        <div class="editor-field">
            @Html.EditorFor(Function(model) model.codigo)
            @Html.ValidationMessageFor(Function(model) model.codigo)
        </div>

        <div class="editor-label">
            @Html.LabelFor(Function(model) model.signatura)
        </div>
        <div class="editor-field">
            @Html.EditorFor(Function(model) model.signatura)
            @Html.ValidationMessageFor(Function(model) model.signatura)
        </div>

        <div class="editor-label">
            @Html.LabelFor(Function(model) model.titulo)
        </div>
        <div class="editor-field">
            @Html.EditorFor(Function(model) model.titulo)
            @Html.ValidationMessageFor(Function(model) model.titulo)
        </div>

        <div class="editor-label">
            @Html.LabelFor(Function(model) model.autor)
        </div>
        <div class="editor-field">
            @Html.EditorFor(Function(model) model.autor)
            @Html.ValidationMessageFor(Function(model) model.autor)
        </div>

        <div class="editor-label">
            @Html.LabelFor(Function(model) model.disponible)
        </div>
        <div class="editor-field">
            @Html.EditorFor(Function(model) model.disponible)
            @Html.ValidationMessageFor(Function(model) model.disponible)
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
End Using

<div>
    @Html.ActionLink("Back to List", "Index")
</div>

@Section Scripts
    @Scripts.Render("~/bundles/jqueryval")
End Section
