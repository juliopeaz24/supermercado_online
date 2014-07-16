<%@ Page Title="" Language="C#" MasterPageFile="~/Principal3.master" AutoEventWireup="true" CodeFile="Carrito.aspx.cs" Inherits="App_Interface_MasterAdministrador_Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   <style type="text/css">
        .auto-style33
        {
            width: 150px;
            height: 21px;
        }
        .auto-style37
        {
            width: 288px;
            height: 21px;
            text-align: center;
        }
        .auto-style38
        {
            width: 288px;
            text-align: center;
        }
        .auto-style39
        {
            width: 288px;
        }
        .auto-style41
        {
            width: 498px;
            height: 21px;
            text-align: center;
        }
        .auto-style42
        {
            width: 498px;
            text-align: center;
        }
        .auto-style47
        {
            width: 150px;
            text-align: center;
        }
        .auto-style48
        {
            width: 152px;
            text-align: center;
            height: 31px;
        }
        .auto-style50
        {
            text-align: center;
        }
        .auto-style51
        {
            width: 150px;
            height: 31px;
        }
        .auto-style52
        {
            width: 498px;
            text-align: center;
            height: 31px;
        }
        .auto-style53
        {
            width: 288px;
            height: 31px;
        }
        .auto-style54
        {
            width: 150px;
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
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51" style="text-align: right">
                </td>
            <td class="auto-style48">
                <asp:Label ID="lblCarritodeCompras" runat="server" style="font-weight: 700; text-align: center;" Text="Carrito de Compras:"></asp:Label>
            </td>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style53">
                <asp:HyperLink ID="hplInicio" runat="server" NavigateUrl="~/App_Interface/MasterClientes/InicioClientes.aspx">Realizar más compras</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style50" colspan="2">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td class="auto-style39">
                <table class="auto-style22">
                    <tr>
                        <td style="text-align: center">
                <asp:Button ID="btnEliminar" runat="server" Height="30px" style="text-align: center; font-weight: 700" Text="Eliminar Item Seleccionado" Width="190px" OnClick="btnEliminar_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style41" colspan="2">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style42" colspan="2">
                &nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">
                <asp:Button ID="btnFacturar" runat="server" Height="30px" style="text-align: center; font-weight: 700" Text="Facturar" Width="120px" OnClick="btnFacturar_Click" />
            </td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style42" colspan="2">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

