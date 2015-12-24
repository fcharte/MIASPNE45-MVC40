
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        Threading.Thread.Sleep(1500)
        ListBox1.Items.Clear()
        ListBox1.Items.Add("Entradas del " &
                            Calendar1.SelectedDate)

    End Sub

    Protected Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        ListBox2.Items.Clear()
        ListBox2.Items.Add("Entradas del " &
                            Calendar2.SelectedDate)

    End Sub
End Class
