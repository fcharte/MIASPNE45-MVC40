Imports System
Imports System.Data.Entity.Migrations

Namespace Migrations
    Public Partial Class InitialCreate
        Inherits DbMigration
    
        Public Overrides Sub Up()
            CreateTable(
                "dbo.Tareas",
                Function(c) New With
                    {
                        .Id = c.Int(nullable := False, identity := True)
                    }) _
                .PrimaryKey(Function(t) t.Id)
            
            CreateTable(
                "dbo.Usuarios",
                Function(c) New With
                    {
                        .Id = c.Int(nullable := False, identity := True),
                        .Nombre = c.String()
                    }) _
                .PrimaryKey(Function(t) t.Id)
            
        End Sub
        
        Public Overrides Sub Down()
            DropTable("dbo.Usuarios")
            DropTable("dbo.Tareas")
        End Sub
    End Class
End Namespace
