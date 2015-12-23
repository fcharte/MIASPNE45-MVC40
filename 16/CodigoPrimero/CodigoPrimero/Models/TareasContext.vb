Imports System.Data.Entity

Partial Public Class TareasContext
    Inherits DbContext

    Public Property Tareas() As DbSet(Of Tareas)
    Public Property Usuarios() As DbSet(Of Usuario)
End Class
