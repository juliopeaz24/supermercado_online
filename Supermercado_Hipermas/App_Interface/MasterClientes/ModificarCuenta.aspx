<%@ Page Title="" Language="C#" MasterPageFile="~/Principal2.master" AutoEventWireup="true" CodeFile="ModificarCuenta.aspx.cs" Inherits="App_Interface_MasterClientes_ModificarCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .auto-style24
    {
        width: 100%;
    }
    .auto-style26
    {
        height: 30px;
    }
    .auto-style27
    {
        width: 114px;
        height: 30px;
        text-align: right;
    }
    .auto-style28
    {
        width: 114px;
    }
    .auto-style31
    {
        text-align: center;
    }
    .auto-style32
    {
            height: 30px;
            width: 213px;
        }
    .auto-style34
    {
            height: 30px;
            width: 92px;
        }
    .auto-style38
    {
        height: 30px;
        width: 230px;
        text-align: right;
    }
    .auto-style40
    {
        height: 30px;
        width: 230px;
    }
    .auto-style42
    {
        height: 30px;
        width: 230px;
        text-align: right;
        font-weight: bold;
    }
    .auto-style45
    {
        height: 30px;
        width: 128px;
    }
    .auto-style46
    {
        width: 128px;
    }
    .auto-style48
    {
        }
    .auto-style49
    {
            width: 92px;
        }
        .auto-style50
        {
            text-align: right;
            width: 213px;
        }
        .auto-style51
        {
            width: 161px;
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
    <table class="auto-style24">
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">
            <asp:Label ID="lblID_Persona" runat="server" CssClass="bold" Text="Digite su número de cédula:"></asp:Label>
        </td>
        <td class="auto-style48" colspan="2">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style51">
            <asp:TextBox ID="txtID_Persona" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnCargar" runat="server" Height="30px" style="font-weight: 700" Text="Cargar Datos" Width="130px" OnClick="btnCargar_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            &nbsp;</td>
        <td class="auto-style32">
            &nbsp;</td>
        <td class="auto-style42">
            &nbsp;</td>
        <td class="auto-style45">
            &nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            <asp:Label ID="lblNombre" runat="server" CssClass="bold" Text="Nombre:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtNombre" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style42">
            <asp:Label ID="lblTel_Habitacion" runat="server" Text="Teléfono de Habitación:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtTel_Habitacion" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            <asp:Label ID="lblApellido_1" runat="server" CssClass="bold" Text="Primer Apellido:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtApellido_1" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style42">
            <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtCelular" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            <asp:Label ID="lblApellido_2" runat="server" CssClass="bold" Text="Segundo Apellido:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtApellido_2" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style42">
            <asp:Label ID="lblNumero_Tarjeta" runat="server" Text="Número de Tarjeta:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtNumero_Tarjeta" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style27">
            <asp:Label ID="lblContraseña" runat="server" CssClass="bold" Text="Contraseña:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtContraseña" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style42">
            <asp:Label ID="lblCodigo_Seguridad" runat="server" Text="Código de Seguridad de la Tarjeta:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtCodigo_Seguridad" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style27">
            <asp:Label ID="lblProvincia" runat="server" CssClass="bold" Text="Provincia:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:DropDownList ID="ddlProvincia" runat="server" Height="22px" Width="150px" DataSourceID="Provincia" DataTextField="Nombre" DataValueField="ID_Provincia">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Provincia" runat="server" ConnectionString="Data Source=ROLANDO-HP\SQLEXPRESS;Initial Catalog=Supermercado_Hipermas;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Provincia]"></asp:SqlDataSource>
        </td>
        <td class="auto-style42">
            <asp:Label ID="lblFecha_Vencimiento" runat="server" Text="Fecha de Vencimiento de la Tarjeta:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtFecha_Vencimiento" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            <asp:Label ID="lblDireccion_Exacta" runat="server" CssClass="bold" Text="Dirección Exacta:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtDireccion_Exacta" runat="server" Height="30px" TextMode="MultiLine" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style38">
            <asp:Label ID="lblNombre_Dueño_Tarjeta" runat="server" CssClass="bold" Text="Nombre del Dueño de la Tarjeta:"></asp:Label>
        </td>
        <td class="auto-style45">
            <asp:TextBox ID="txtNombre_Dueño_Tarjeta" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27">
            &nbsp;</td>
        <td class="auto-style32">
            &nbsp;</td>
        <td class="auto-style40">&nbsp;</td>
        <td class="auto-style45"></td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style31" colspan="2">
            <asp:Button ID="btnModificar" runat="server" Height="30px" style="text-align: center; font-weight: 700" Text="Modificar Datos" Width="130px" OnClick="btnModificar_Click" />
        </td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style31" colspan="2">
            &nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">
            <asp:TextBox ID="TxtID_Direccion" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="auto-style50">
            <asp:TextBox ID="TxtCorreo" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="auto-style48">
            <asp:TextBox ID="TxtID_Cliente" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="auto-style46">
            <asp:TextBox ID="TxtEstado" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style28">&nbsp;</td>
        <td class="auto-style50">&nbsp;</td>
        <td class="auto-style48">&nbsp;</td>
        <td class="auto-style46">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

