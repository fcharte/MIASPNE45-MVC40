
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Si no es la solicitud inicial no continuar
        If IsPostBack Then Return

        ' Para los usuarios que han iniciado sesión
        If Not Profile.IsAnonymous Then
            ' mostrar los datos personales
            IDInicioSesion.Text = User.Identity.Name
            Nombre.Text = Profile.Personales.Nombre
            Apellidos.Text = Profile.Personales.Apellidos
        Else
            ' Si es un usuario anónimo, desactivar los
            ' datos personales
            Nombre.Enabled = False
            Apellidos.Enabled = False
            Button1.Enabled = False
        End If

        ' Mostrar los artículos ya leídos
        For Each Articulo In Profile.Articulos
            For Each Elemento As ListItem In ListaArticulos.Items
                If Elemento.Value = Articulo Then
                    Elemento.Selected = True
                End If
            Next
        Next
    End Sub

    Protected Sub ListaArticulos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListaArticulos.SelectedIndexChanged
        ' Recorrer la lista de artículos
        For Each Elemento As ListItem In ListaArticulos.Items
            ' Añadiendo los marcados siempre que no estén
            ' ya en la lista
            If Elemento.Selected Then
                If Profile.Articulos.IndexOf(Elemento.Value) =
                             -1 Then
                    Profile.Articulos.Add(Elemento.Value)
                End If
            Else ' y eliminando los que se hubiesen desmarcado
                Profile.Articulos.Remove(Elemento.Value)
            End If
        Next

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' Conservar los datos personales de usuarios identificados
        Profile.Personales.Nombre = Nombre.Text
        Profile.Personales.Apellidos = Apellidos.Text

    End Sub
End Class
