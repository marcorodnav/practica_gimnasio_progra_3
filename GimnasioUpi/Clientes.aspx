<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCatalogo.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="GimnasioUpi.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td><asp:GridView ID="gridViewClientes" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_CLIENTE" DataSourceID="gimnasioDataSource">
    <Columns>
        <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" InsertVisible="False" ReadOnly="True" SortExpression="ID_CLIENTE" />
        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
        <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
    </Columns>
</asp:GridView>
        </td>
        <td>ID:
            <asp:TextBox ID="TxtIdCliente" runat="server"></asp:TextBox>
            <br />
            NOMBRE:
            <asp:TextBox ID="TxtNombreCliente" runat="server"></asp:TextBox>
            <br />
            EDAD:
            <asp:TextBox ID="TxtEdadCliente" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnAgrearCliente" runat="server" Text="Agregar" OnClick="BtnAgrearCliente_Click" />
            <asp:Button ID="BtnModificarCliente" runat="server" Text="Modificar" OnClick="BtnModificarCliente_Click" />
            <asp:Button ID="BtnBorrarCliente" runat="server" Text="Borrar" OnClick="BtnBorrarCliente_Click" />
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="gimnasioDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [CLIENTE]" DeleteCommand="DELETE FROM CLIENTE
WHERE ID_CLIENTE = @ID_BORRAR" InsertCommand="INSERT INTO CLIENTE
(NOMBRE, EDAD)
VALUES
(@NOMBRE, @EDAD)" UpdateCommand="UPDATE CLIENTE
SET NOMBRE = @NOMBRE, 
EDAD = @EDAD
WHERE ID_CLIENTE = @ID_ACTUALIZAR">
    <DeleteParameters>
        <asp:ControlParameter ControlID="TxtIdCliente" Name="ID_BORRAR" PropertyName="Text" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="TxtNombreCliente" Name="NOMBRE" PropertyName="Text" />
        <asp:ControlParameter ControlID="TxtEdadCliente" Name="EDAD" PropertyName="Text" />
    </InsertParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="TxtNombreCliente" Name="NOMBRE" PropertyName="Text" />
        <asp:ControlParameter ControlID="TxtEdadCliente" Name="EDAD" PropertyName="Text" />
        <asp:ControlParameter ControlID="TxtIdCliente" Name="ID_ACTUALIZAR" PropertyName="Text" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
