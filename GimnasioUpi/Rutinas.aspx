<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCatalogo.Master" AutoEventWireup="true" CodeBehind="Rutinas.aspx.cs" Inherits="GimnasioUpi.Rutinas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="gridViewRutinas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_RUTINA" DataSourceID="rutinasDataSource">
                    <Columns>
                        <asp:BoundField DataField="ID_RUTINA" HeaderText="ID_RUTINA" InsertVisible="False" ReadOnly="True" SortExpression="ID_RUTINA" />
                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>Nombre:
                <asp:TextBox ID="TxtNombreRutina" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="BtnAgregarRutina" runat="server" Text="Agregar" />
                <asp:Button ID="BtnModificarRutina" runat="server" Text="Modificar" />
                <asp:Button ID="BtnBorrarRutina" runat="server" Text="Borrar" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="rutinasDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [RUTINA]"></asp:SqlDataSource>
</asp:Content>
