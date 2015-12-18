@Code
    ViewData("Title") = "Novedades"
    Layout = "~/Views/Shared/_Layout.vbhtml"
End Code

@section anuncio
 <ul>
    <li>@Html.ActionLink("Manual Windows 8", "Novedades", "Home", New With {.id = "MIW8"}, vbNull)</li>
    <li>@Html.ActionLink("Guía Excel 2013", "Novedades", "Home", New With {.id = "Excel2013"}, vbNull)</li>
 </ul>
End Section

<h2>@ViewData("Title")</h2><h3>@ViewData("titulo")</h3>
<p>A continuación tiene una lista de los títulos publicados en las últimas semanas por Anaya Multimedia. Puede hacer clic en las portadas para acceder a toda la información de cada libro.</p>
<p> 
        <img src="@Url.Content("~/Content/MIW8.jpg")"  style="left: 17px; position: relative; top: -5px; " />&nbsp;
        <img src="@Url.Content("~/Content/Excel2013.jpg")" style="z-index: 100; left: 85px; position: relative; top: -4px; " />
</p>