﻿Imports System.Web.DynamicData
Imports System.Web.Routing
Imports System.Web.UI.WebControls.Expressions

Class ListDetails
    Inherits Page

    Protected table As MetaTable
    
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context)
        GridView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context))
        FormView1.SetMetaTable(table)
        GridDataSource.EntityTypeFilter = table.EntityType.Name
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name
        
    End Sub
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        Title = table.DisplayName
        GridDataSource.Include = table.ForeignKeyColumnsNames
        DetailsDataSource.Include = table.ForeignKeyColumnsNames
    
        ' Selección desde dirección URL
        If Not Page.IsPostBack AndAlso table.HasPrimaryKey Then
            GridView1.SelectedPersistedDataKey = table.GetDataKeyFromRoute
            If GridView1.SelectedPersistedDataKey Is Nothing Then
                GridView1.SelectedIndex = 0
            End If
        End If
        ' Deshabilitar varias opciones si la tabla es de solo lectura
        If table.IsReadOnly Then
            DetailsPanel.Visible = False
            GridView1.AutoGenerateSelectButton = False
            GridView1.AutoGenerateEditButton = False
            GridView1.AutoGenerateDeleteButton = False
            GridView1.EnablePersistedSelection = False
        End If
    End Sub
    
    Protected Sub GridView1_DataBound(ByVal sender As Object, ByVal e As EventArgs)
        If GridView1.Rows.Count = 0 Then
            FormView1.ChangeMode(FormViewMode.Insert)
        End If
    End Sub
    
    Protected Sub Label_PreRender(ByVal sender As Object, ByVal e As EventArgs)
        Dim label = CType(sender, Label)
        Dim dynamicFilter = CType(label.FindControl("DynamicFilter"), DynamicFilter)
        Dim fuc = CType(dynamicFilter.FilterTemplate, QueryableFilterUserControl)
        If fuc IsNot Nothing AndAlso fuc.FilterControl IsNot Nothing Then
            label.AssociatedControlID = fuc.FilterControl.GetUniqueIDRelativeTo(label)
        End If
    End Sub
    
    Protected Sub DynamicFilter_FilterChanged(ByVal sender As Object, ByVal e As EventArgs)
        GridView1.EditIndex = -1
        GridView1.PageIndex = 0
        FormView1.ChangeMode(FormViewMode.ReadOnly)
    End Sub
    
    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As EventArgs)
        FormView1.ChangeMode(FormViewMode.ReadOnly)
    End Sub
    
    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As EventArgs)
        GridView1.EditIndex = -1
        FormView1.ChangeMode(FormViewMode.ReadOnly)
    End Sub
    
    Protected Sub GridView1_RowCreated(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        SetDeleteConfirmation(e.Row)
    End Sub
    
    Protected Sub GridView1_RowDeleted(ByVal sender As Object, ByVal e As GridViewDeletedEventArgs)
        FormView1.DataBind()
    End Sub
    
    Protected Sub GridView1_RowUpdated(ByVal sender As Object, ByVal e As GridViewUpdatedEventArgs)
        FormView1.DataBind()
    End Sub
    
    Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As FormViewDeletedEventArgs)
        GridView1.DataBind()
    End Sub
    
    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As FormViewUpdatedEventArgs)
        GridView1.DataBind()
    End Sub
    
    Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As FormViewInsertedEventArgs)
        GridView1.DataBind()
    End Sub
    
    Protected Sub FormView1_ModeChanging(ByVal sender As Object, ByVal e As FormViewModeEventArgs)
        If e.NewMode <> FormViewMode.ReadOnly Then
            GridView1.EditIndex = -1
        End If
    End Sub
    
    Protected Sub FormView1_PreRender(ByVal sender As Object, ByVal e As EventArgs)
        If FormView1.Row IsNot Nothing Then
            SetDeleteConfirmation(FormView1.Row)
        End If
    End Sub
    
    Private Sub SetDeleteConfirmation(ByVal row As TableRow)
        For Each c As Control In row.Cells(0).Controls
            Dim Button As LinkButton = TryCast(c, LinkButton)
            If button IsNot Nothing AndAlso button.CommandName = DataControlCommands.DeleteCommandName Then
                button.OnClientClick = "return confirm('¿Está seguro de que desea eliminar este elemento?');"
            End If
        Next
    End Sub
    
End Class
