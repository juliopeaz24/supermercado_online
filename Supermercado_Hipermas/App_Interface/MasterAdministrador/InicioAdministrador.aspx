<%@ Page Title="" Language="C#" MasterPageFile="~/Principal3.master" AutoEventWireup="true" CodeFile="InicioAdministrador.aspx.cs" Inherits="App_Interface_MasterAdministrador_InicioAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">


     
    <style type="text/css">
        .auto-style24
        {
            width: 188px;
        }
        .auto-style25
        {
            width: 48px;
            text-align: center;
        }
        .auto-style26
        {
            height: 21px;
            width: 260px;
        }
        .auto-style27
        {
            width: 294px;
            text-align: right;
        }
        .auto-style28
        {
            width: 357px;
            text-align: right;
        }
        .auto-style29 {
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
    <table class="auto-style22" style="width: 98%">
        <tr>
            <td class="auto-style24">
                <asp:Menu ID="NavigationMenuProductos" runat="server" CssClass="menu" 
                    EnableViewState="False" IncludeStyleBlock="False" 
                    onmenuitemclick="NavigationMenuProductos_MenuItemClick"      >
                    <Items>
                        <asp:MenuItem Text="Abarrotes">
                            <asp:MenuItem Text="Aceites y Grasas" Value="1-1"></asp:MenuItem>
                            <asp:MenuItem Text="Aderezos" Value="1-2"></asp:MenuItem>
                            <asp:MenuItem Text="Alimentos Congelados" Value="1-3"></asp:MenuItem>
                            <asp:MenuItem Text="Alimentos Refrigerados" Value="1-4"></asp:MenuItem>
                            <asp:MenuItem Text="Artículos Desechables" Value="1-5"></asp:MenuItem>
                            <asp:MenuItem Text="Bebidas en Polvo" Value="1-6"></asp:MenuItem>
                            <asp:MenuItem Text="Bebidas Gaseosas y Agua" Value="1-7"></asp:MenuItem>
                            <asp:MenuItem Text="Bocas" Value="1-8"></asp:MenuItem>
                            <asp:MenuItem Text="Café, Té y Complementos" Value="1-9"></asp:MenuItem>
                            <asp:MenuItem Text="Cereales" Value="1-10"></asp:MenuItem>
                            <asp:MenuItem Text="Condimentos y Especias" Value="1-11"></asp:MenuItem>
                            <asp:MenuItem Text="Contenedores Desechables" Value="1-12"></asp:MenuItem>
                            <asp:MenuItem Text="Control de Plagas" Value="1-13"></asp:MenuItem>
                            <asp:MenuItem Text="Dulces" Value="1-14"></asp:MenuItem>
                            <asp:MenuItem Text="Especialidades y Conservas" Value="1-15"></asp:MenuItem>
                            <asp:MenuItem Text="Frutas Deshidratadas y Secas" Value="1-16"></asp:MenuItem>
                            <asp:MenuItem Text="Frutas Enlatadas" Value="1-17"></asp:MenuItem>
                            <asp:MenuItem Text="Galletas" Value="1-18"></asp:MenuItem>
                            <asp:MenuItem Text="Granos Básicos y Azúcar" Value="1-19"></asp:MenuItem>
                            <asp:MenuItem Text="Helados" Value="1-20"></asp:MenuItem>
                            <asp:MenuItem Text="Horneado y Complementos" Value="1-21"></asp:MenuItem>
                            <asp:MenuItem Text="Jaleas, Mermeladas y Conservas" Value="1-22"></asp:MenuItem>
                            <asp:MenuItem Text="Lavado de Ropa" Value="1-23"></asp:MenuItem>
                            <asp:MenuItem Text="Lavaplatos" Value="1-24"></asp:MenuItem>
                            <asp:MenuItem Text="Limpiadores y Destaqueadores" Value="1-25"></asp:MenuItem>
                            <asp:MenuItem Text="Limpieza de Baño" Value="1-26"></asp:MenuItem>
                            <asp:MenuItem Text="Limpieza de Calzado" Value="1-27"></asp:MenuItem>
                            <asp:MenuItem Text="Limpieza de Pisos" Value="1-28"></asp:MenuItem>
                            <asp:MenuItem Text="Limpieza del Ambiente" Value="1-29"></asp:MenuItem>
                            <asp:MenuItem Text="Limpieza del Hogar y Accesorios" Value="1-30"></asp:MenuItem>
                            <asp:MenuItem Text="Mariscos Enlatados" Value="1-31"></asp:MenuItem>
                            <asp:MenuItem Text="Pan y Tortillas" Value="1-32"></asp:MenuItem>
                            <asp:MenuItem Text="Postres" Value="1-33"></asp:MenuItem>
                            <asp:MenuItem Text="Productos de Papel" Value="1-34"></asp:MenuItem>
                            <asp:MenuItem Text="Productos Kosher" Value="1-35"></asp:MenuItem>
                            <asp:MenuItem Text="Productos Naturales y Orgánicos" Value="1-36"></asp:MenuItem>
                            <asp:MenuItem Text="Productos Saludables" Value="1-37"></asp:MenuItem>
                            <asp:MenuItem Text="Salsas" Value="1-38"></asp:MenuItem>
                            <asp:MenuItem Text="Sopas y Consomé" Value="1-39"></asp:MenuItem>
                            <asp:MenuItem Text="Vegetales Enlatados" Value="1-40"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Cuidado Personal">
                            <asp:MenuItem Text="Alimentos Infantíles" Value="2-41"></asp:MenuItem>
                            <asp:MenuItem Text="Artículos para Bebé" Value="2-42"></asp:MenuItem>
                            <asp:MenuItem Text="Automedicación" Value="2-43"></asp:MenuItem>
                            <asp:MenuItem Text="Belleza" Value="2-44"></asp:MenuItem>
                            <asp:MenuItem Text="Cuidado de Cabello" Value="2-45"></asp:MenuItem>
                            <asp:MenuItem Text="Cuidado de la Piel" Value="2-46"></asp:MenuItem>
                            <asp:MenuItem Text="Cuidado Oral" Value="2-47"></asp:MenuItem>
                            <asp:MenuItem Text="Higiéne Personal" Value="2-48"></asp:MenuItem>
                            <asp:MenuItem Text="Incontinencia" Value="2-49"></asp:MenuItem>
                            <asp:MenuItem Text="Protección Femenina" Value="2-50"></asp:MenuItem>
                            <asp:MenuItem Text="Remoción del Vello" Value="2-51"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Embutidos">
                            <asp:MenuItem Text="Embutidos en Paquete" Value="5-52"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Bebidas Alcohólicas">
                            <asp:MenuItem Text="Cervezas" Value="10-53"></asp:MenuItem>
                            <asp:MenuItem Text="Licores" Value="10-54"></asp:MenuItem>
                            <asp:MenuItem Text="Ron" Value="10-55"></asp:MenuItem>
                            <asp:MenuItem Text="Vinos" Value="10-56"></asp:MenuItem>
                            <asp:MenuItem Text="Vodka" Value="10-57"></asp:MenuItem>
                            <asp:MenuItem Text="Whiskey" Value="10-58"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
                        </td>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label2" runat="server" Text="Bienvenido "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                <asp:Label ID="lblProductos" runat="server" CssClass="bold" Text="Productos:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <table class="auto-style22">
                                <tr>
                                    <td class="auto-style27">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <table class="auto-style22">
                                <tr>
                                    <td class="auto-style28">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="Select "></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                <asp:Label ID="lblCantidad" runat="server" CssClass="bold" Text="Cantidad del Producto:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtCantidad" runat="server" Width="150px"></asp:TextBox>
                                    </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                <asp:Button ID="btnAgregar" runat="server" Height="30px" style="font-weight: 700" 
                                            Text="Agregar al Carrito" Width="130px" OnClick="btnAgregar_Click"  />
                                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>