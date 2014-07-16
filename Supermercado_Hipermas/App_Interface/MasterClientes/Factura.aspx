<%@ Page Title="" Language="C#" MasterPageFile="~/Principal2.master" AutoEventWireup="true" CodeFile="Factura.aspx.cs" Inherits="App_Interface_MasterClientes_Factura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style24 {            text-align: right;
        }
        .auto-style27 {
            width: 157px;
        }
        .auto-style29 {
            width: 253px;
        }
        .auto-style31 {
            text-align: right;
            width: 218px;
        }
        .auto-style33 {
            font-weight: bold;
        }
        .auto-style34 {
            width: 218px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style22">
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style34">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style33" Text="ID Cliente:"></asp:Label>
&nbsp;<asp:Label ID="lblID_Cliente" runat="server"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style33" Text="Nombre:"></asp:Label>
&nbsp;<asp:Label ID="lblNombre" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24" colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="162px" Width="470px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="Subtotal:"></asp:Label>
&nbsp;<asp:Label ID="lblSubtotal" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style24" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style33" Text="Total:"></asp:Label>
&nbsp;<asp:Label ID="lblTotal" runat="server" CssClass="auto-style33"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

