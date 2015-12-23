Imports System
Imports System.Data.Entity.Migrations

Namespace Migrations
    Public Partial Class Tareas
        Inherits DbMigration
    
        Public Overrides Sub Up()
            AddColumn("dbo.Tareas", "Descripcion", Function(c) c.String())
            AddColumn("dbo.Tareas", "FechaFinalizacion", Function(c) c.DateTime(nullable := False))
        End Sub
        
        Public Overrides Sub Down()
            DropColumn("dbo.Tareas", "FechaFinalizacion")
            DropColumn("dbo.Tareas", "Descripcion")
        End Sub
    End Class
End Namespace
