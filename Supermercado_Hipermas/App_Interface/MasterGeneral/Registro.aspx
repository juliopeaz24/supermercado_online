<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="App_Interface_MasterGeneral_Registro" %>

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
            width: 219px;
        }
    .auto-style34
    {
            height: 30px;
            width: 88px;
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
        width: 230px;
    }
    .auto-style49
    {
            width: 88px;
        }
        .auto-style50
        {
            text-align: left;
            width: 219px;
        }
        .auto-style58 {
            height: 20px;
            text-align: left;
        }
        .auto-style63 {
            width: 88px;
            height: 21px;
        }
        .auto-style64 {
            width: 114px;
            height: 21px;
        }
        .auto-style65 {
            text-align: center;
            width: 219px;
            height: 21px;
        }
        .auto-style66 {
            width: 230px;
            height: 21px;
        }
        .auto-style67 {
            width: 128px;
            height: 21px;
        }
        .auto-style68 {
            height: 21px;
        }
        .auto-style70 {
            width: 114px;
            height: 20px;
            text-align: right;
        }
        .auto-style71 {
            height: 20px;
            width: 219px;
        }
        .auto-style73 {
            height: 20px;
            width: 230px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style74 {
            width: 88px;
            height: 20px;
        }
        .auto-style75 {
            width: 128px;
            height: 20px;
        }
        .auto-style76 {
            height: 20px;
        }
        .auto-style77 {
            width: 114px;
            height: 21px;
            text-align: right;
        }
        .auto-style78 {
            height: 21px;
            width: 219px;
        }
        .auto-style79 {
            height: 21px;
            width: 230px;
            text-align: right;
            font-weight: bold;
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
        <td class="auto-style63"></td>
        <td class="auto-style64"></td>
        <td class="auto-style65"></td>
        <td class="auto-style66"></td>
        <td class="auto-style67"></td>
        <td class="auto-style68"></td>
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
            <asp:Label ID="lblID_Persona" runat="server" CssClass="bold" Text="Cédula:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtID_Persona" runat="server" Width="150px"></asp:TextBox>
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
            <asp:Label ID="lblNombre" runat="server" CssClass="bold" Text="Nombre:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtNombre" runat="server" Width="150px"></asp:TextBox>
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
            <asp:Label ID="lblApellido_1" runat="server" CssClass="bold" Text="Primer Apellido:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtApellido_1" runat="server" Width="150px"></asp:TextBox>
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
        <td class="auto-style34"></td>
        <td class="auto-style27">
            <asp:Label ID="lblApellido_2" runat="server" CssClass="bold" Text="Segundo Apellido:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtApellido_2" runat="server" Width="150px"></asp:TextBox>
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
            <asp:Label ID="lblCorreo" runat="server" CssClass="bold" Text="Correo:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtCorreo" runat="server" Width="150px"></asp:TextBox>
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
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style27">
            <asp:Label ID="lblContraseña" runat="server" CssClass="bold" Text="Contraseña:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:TextBox ID="txtContraseña" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style42">
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
            <asp:Label ID="lblProvincia" runat="server" CssClass="bold" Text="Provincia:"></asp:Label>
        </td>
        <td class="auto-style32">
            <asp:DropDownList ID="ddlProvincia" runat="server" Height="22px" Width="150px" DataSourceID="Provincia" DataTextField="Nombre" DataValueField="ID_Provincia">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Provincia" runat="server" ConnectionString="Data Source=ROLANDO-HP\SQLEXPRESS;Initial Catalog=Supermercado_Hipermas;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Provincia]"></asp:SqlDataSource>
        </td>
        <td class="auto-style38">
            &nbsp;</td>
        <td class="auto-style45">
            &nbsp;</td>
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
            <asp:Button ID="btnRegistrarse" runat="server" Height="30px" style="text-align: center; font-weight: 700" Text="Registrarse" Width="120px" OnClick="btnRegistrarse_Click1" />
        </td>
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
            <asp:TextBox ID="TxtID_Direccion" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td class="auto-style48">
            <asp:TextBox ID="TxtID_Cliente" runat="server" Visible="False"></asp:TextBox>
        </td>
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
</table>
</asp:Content>

