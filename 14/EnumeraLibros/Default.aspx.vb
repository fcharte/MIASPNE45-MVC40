Imports System.Data
Imports System.Data.OleDb

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Creamos la conexión
        Dim Conexion = New OleDbConnection( _
          "Provider=Microsoft.Jet.OLEDB.4.0;" &
          "Data Source=App_Data\Libros.mdb")

        ' el comando que vamos a ejecutar
        Dim Comando = New OleDbCommand(
         "SELECT * FROM Libros ORDER BY ISBN",
         Conexion)

        ' y el adaptador de datos asociado
        Dim Adaptador = New OleDbDataAdapter(Comando)

        ' Creamos un DataSet
        Dim Conjunto = New DataSet()
        ' y obtenemos en él el resultado
        Adaptador.Fill(Conjunto, "Libros")

        ' Indicamos el número de filas recuperadas
        Response.Write("<h1>Hay " & _
         Conjunto.Tables("Libros").Rows.Count &
         " filas</h1><br />")

        ' Configuración de la tabla
        Response.Write("<table border='2' cellpadding='5'" &
         " style='background-color: cyan; color: black; " &
         "font-family: Arial; font-weight: bold'>")

        ' Recorremos las filas
        For Each Fila In Conjunto.Tables("Libros").Rows
            ' mostrando dos de sus columnas
            Response.Write("<tr><td>" & Fila("ISBN") &
             "</td><td>" & Fila("Titulo") + "</td></tr>")
        Next

        Response.Write("</table>")
        Conexion.Close()

    End Sub
End Class
