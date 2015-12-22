<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="codigo" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="codigo" HeaderText="Código" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="signatura" HeaderText="Signatura" SortExpression="signatura" />
                <asp:BoundField DataField="titulo" HeaderText="Título" SortExpression="titulo" />
                <asp:BoundField DataField="autor" HeaderText="Autor" SortExpression="autor" />
                <asp:BoundField DataField="disponible" HeaderText="Disponible" SortExpression="disponible" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BibliotecaConnectionString1 %>" DeleteCommand="DELETE FROM [libros] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [libros] ([codigo], [signatura], [titulo], [autor], [disponible]) VALUES (@codigo, @signatura, @titulo, @autor, @disponible)" ProviderName="<%$ ConnectionStrings:BibliotecaConnectionString1.ProviderName %>" SelectCommand="SELECT [codigo], [signatura], [titulo], [autor], [disponible] FROM [libros]" UpdateCommand="UPDATE [libros] SET [signatura] = @signatura, [titulo] = @titulo, [autor] = @autor, [disponible] = @disponible WHERE [codigo] = @codigo">
            <DeleteParameters>
                <asp:Parameter Name="codigo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codigo" Type="Int32" />
                <asp:Parameter Name="signatura" Type="String" />
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="disponible" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="signatura" Type="String" />
                <asp:Parameter Name="titulo" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="disponible" Type="String" />
                <asp:Parameter Name="codigo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
