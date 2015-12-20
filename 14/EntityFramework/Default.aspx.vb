Imports System.Data.Objects
Imports System.Data.Objects.DataClasses

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Se obtiene el contexto de acceso a las entidades
        Dim contextoBibilioteca = New BibliotecaEntities()

        ' Se ejecuta una consulta para obtener los libros de un autor
        Dim consultaLibros = contextoBibilioteca.libros.Where(
           Function(libro) libro.autor = "Charte, Francisco")

        Response.Write("<h1>Hay " & _
         consultaLibros.Count &
         " filas</h1><br />")
        ' Configuración de la tabla
        Response.Write("<table border='2' cellpadding='5'" &
         " style='background-color: cyan; color: black; " &
         "font-family: Arial; font-weight: bold'>")


        ' Se enumeran los resultados
        For Each Fila In consultaLibros
            Response.Write("<tr><td>" & Fila.titulo & "</td></tr>")
        Next

        Response.Write("</table>")
    End Sub
End Class
