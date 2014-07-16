<%@ Page Title="" Language="C#" MasterPageFile="~/Principal2.master" AutoEventWireup="true" CodeFile="InhabilitarCuenta.aspx.cs" Inherits="App_Interface_MasterClientes_InhabilitarCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style25
        {
            width: 397px;
        }
        .auto-style26
        {
            width: 154px;
        }
        .auto-style27
        {
            height: 30px;
        }
        .auto-style28
        {
            width: 154px;
            height: 30px;
        }
        .auto-style29
        {
            width: 397px;
            height: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style22">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style29">
                <asp:Label ID="lblInhabilitarCuenta" runat="server" style="font-weight: 700" Text="Si desea inhabilitar su cuenta, presione el siguiente botón."></asp:Label>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style29">
                <asp:Button ID="btnInhabilitarCuenta" runat="server" Height="30px" style="font-weight: 700" Text="Inhabilitar Cuenta" Width="170px" />
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

