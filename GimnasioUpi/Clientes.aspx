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
            <td>NOMBRE:
                <asp:TextBox ID="TxtNombreCliente" runat="server"></asp:TextBox>
                <br />
                EDAD:
                <asp:TextBox ID="TxtEdadCliente" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="BtnAgrearCliente" runat="server" Text="Agregar" />
                <asp:Button ID="BtnModificarCliente" runat="server" Text="Modificar" />
                <asp:Button ID="BtnBorrarCliente" runat="server" Text="Borrar" />
            </td>
        </tr>
    </table>
<asp:SqlDataSource ID="gimnasioDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [CLIENTE]"></asp:SqlDataSource>
</asp:Content>
