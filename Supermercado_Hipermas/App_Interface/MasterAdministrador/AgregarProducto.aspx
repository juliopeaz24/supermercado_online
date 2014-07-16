<%@ Page Title="" Language="C#" MasterPageFile="~/Principal3.master" AutoEventWireup="true" CodeFile="AgregarProducto.aspx.cs" Inherits="App_Interface_MasterAdministrador_AgregarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style24
        {
            text-align: right;
            width: 194px;
        }
        .auto-style25
        {
            width: 194px;
        }
        .auto-style27
        {
            width: 214px;
            height: 30px;
        }
        .auto-style28
        {
            text-align: right;
            height: 30px;
        font-weight: 700;
    }
        .auto-style29
        {
            height: 30px;
        }
        .auto-style30
        {
            width: 214px;
            height: 21px;
        }
        .auto-style31
        {
            width: 194px;
            height: 21px;
        }
        .auto-style32
        {
            height: 21px;
        }
        .auto-style34
        {
            height: 21px;
            width: 304px;
        }
        .auto-style35
        {
            height: 30px;
            width: 304px;
        }
        .auto-style36
        {
            width: 304px;
        }
        .auto-style37
        {
            width: 214px;
        }
        .auto-style38
        {
            text-align: right;
            height: 30px;
        }
        .auto-style39
        {
            height: 30px;
            text-align: center;
        }
        .auto-style40
        {
            text-align: center;
            height: 30px;
            font-weight: 700;
        }
        .auto-style41
        {
            width: 214px;
            height: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">

        function Confirmacion() {
            var seleccion = confirm("acepta el mensaje ?");

            if (seleccion)
                alert("se acepto el mensaje");
            else
                ("NO se acepto el mensaje");

            return seleccion;
        }
    </script>
    <table class="auto-style22">
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30"></td>
        <td class="auto-style31"></td>
        <td class="auto-style34"></td>
        <td class="auto-style32"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style38">
            <asp:Label ID="lblID_Producto" runat="server" CssClass="bold" Text="ID del Producto:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="txtID_Producto" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style38">
            <asp:Label ID="lblNombre" runat="server" CssClass="bold" Text="Nombre del Producto:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="txtNombre" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style38">
            <asp:Label ID="lblDescripcion" runat="server" CssClass="bold" Text="Descripción del Producto:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="txtDescripcion" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style38">
            <asp:Label ID="lblPrecio" runat="server" CssClass="bold" Text="Precio del Producto:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="txtPrecio" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style38">
            <asp:Label ID="lblSubcategoria" runat="server" CssClass="bold" Text="Subcategoría:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:DropDownList ID="ddlSubcategoria" runat="server" Height="22px" Width="150px" DataSourceID="Subcategoria" DataTextField="Nombre" DataValueField="ID_Subcategoria">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Subcategoria" runat="server" ConnectionString="Data Source=ROLANDO-HP\SQLEXPRESS;Initial Catalog=Supermercado_Hipermas;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Subcategoria]"></asp:SqlDataSource>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style28">
            <asp:Label ID="lblExistencias" runat="server" Text="Número de Existencias:"></asp:Label>
        </td>
        <td class="auto-style35">
            <asp:TextBox ID="txtExistencias" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style29"></td>
    </tr>
    <tr>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style28">
            &nbsp;</td>
        <td class="auto-style35">
            &nbsp;</td>
        <td class="auto-style29">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style41">&nbsp;</td>
        <td class="auto-style40" colspan="2">
            <asp:Button ID="btnAgregar" runat="server" Height="30px" style="font-weight: 700" Text="Agregar Producto" Width="130px" OnClick="btnAgregar_Click1" />
        </td>
        <td class="auto-style39">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style41">&nbsp;</td>
        <td class="auto-style40" colspan="2">
            &nbsp;</td>
        <td class="auto-style39">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style37">&nbsp;</td>
        <td class="auto-style24">&nbsp;</td>
        <td class="auto-style36">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

