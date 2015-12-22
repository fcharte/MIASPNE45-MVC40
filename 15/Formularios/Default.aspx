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
    
        <asp:FormView ID="FormView1" runat="server" ItemType="" DataKeyNames="codigo" DataSourceID="SqlDataSource1" HeaderText="Edición de la tabla LIBROS" AllowPaging="True" CellPadding="4" ForeColor="#333333">
            <EditItemTemplate>
                codigo:
                <asp:Label ID="codigoLabel1" runat="server" Text='<%# Eval("codigo") %>' />
                <br />
                signatura:
                <asp:TextBox ID="signaturaTextBox" runat="server" 
                    Text='<%# Bind("signatura") %>' />
                <br />
                titulo:
                <asp:TextBox ID="tituloTextBox" runat="server" Text='<%# Bind("titulo") %>' />
                <br />
                autor:
                <asp:TextBox ID="autorTextBox" runat="server" Text='<%# Bind("autor") %>' />
                <br />
                disponible:
                <asp:TextBox ID="disponibleTextBox" runat="server" 
                    Text='<%# Bind("disponible") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                codigo:
                <asp:TextBox ID="codigoTextBox" runat="server" Text='<%# Bind("codigo") %>' />
                <br />
                signatura:
                <asp:TextBox ID="signaturaTextBox" runat="server" 
                    Text='<%# Bind("signatura") %>' />
                <br />
                titulo:
                <asp:TextBox ID="tituloTextBox" runat="server" Text='<%# Bind("titulo") %>' />
                <br />
                autor:
                <asp:TextBox ID="autorTextBox" runat="server" Text='<%# Bind("autor") %>' />
                <br />
                disponible:
                <asp:TextBox ID="disponibleTextBox" runat="server" 
                    Text='<%# Bind("disponible") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <span lang="es">Código</span>:
                <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' />
                <br />
                <br />
                <span lang="es">S</span>ignatura:
                <asp:Label ID="signaturaLabel" runat="server" Text='<%# Bind("signatura") %>' />
                <br />
                <br />
                <span lang="es">Tí</span>tulo:
                <asp:Label ID="tituloLabel" runat="server" Text='<%# Bind("titulo") %>' />
                <br />
                <br />
                <span lang="es">A</span>utor:
                <asp:Label ID="autorLabel" runat="server" Text='<%# Bind("autor") %>' />
                <br />
                <br />
                <span lang="es">D</span>isponible:
                <asp:Label ID="disponibleLabel" runat="server" 
                    Text='<%# Bind("disponible") %>' />
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="Nuevo" />
            </ItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <span lang="es">Edición de la tabla LIBROS</span>
            </HeaderTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BibliotecaConnectionString %>" SelectCommand="SELECT * FROM [libros]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
