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
            <td>Id:
                <asp:TextBox ID="TxtIdRutina" runat="server"></asp:TextBox>
                <br />
                Nombre:
                <asp:TextBox ID="TxtNombreRutina" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="BtnAgregarRutina" runat="server" Text="Agregar" OnClick="BtnAgregarRutina_Click" />
                <asp:Button ID="BtnModificarRutina" runat="server" Text="Modificar" OnClick="BtnModificarRutina_Click" />
                <asp:Button ID="BtnBorrarRutina" runat="server" Text="Borrar" OnClick="BtnBorrarRutina_Click" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="rutinasDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [RUTINA]" DeleteCommand="DELETE FROM RUTINA
WHERE ID_RUTINA = @ID_BORRAR" InsertCommand="INSERT INTO RUTINA
VALUES (@NOMBRE)" UpdateCommand="UPDATE RUTINA
SET NOMBRE = @NOMBRE
WHERE ID_RUTINA = @ID_MODIFICAR">
        <DeleteParameters>
            <asp:ControlParameter ControlID="TxtIdRutina" Name="ID_BORRAR" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TxtNombreRutina" Name="NOMBRE" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="TxtNombreRutina" Name="NOMBRE" PropertyName="Text" />
            <asp:ControlParameter ControlID="TxtIdRutina" Name="ID_MODIFICAR" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
