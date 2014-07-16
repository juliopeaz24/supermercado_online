<%@ Page Title="" Language="C#" MasterPageFile="~/Principal2.master" AutoEventWireup="true" CodeFile="ErrorTarjeta.aspx.cs" Inherits="App_Interface_MasterClientes_ErrorTarjeta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 225px;
        }
        .auto-style25 {
            width: 482px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style22">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25" style="text-align: center">
                <asp:Label ID="lblError" runat="server" style="font-weight: 700" Text="El número de tarjeta utilizado es inválido o ha expirado."></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

