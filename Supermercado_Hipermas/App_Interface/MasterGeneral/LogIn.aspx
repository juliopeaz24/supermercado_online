<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="App_Interface_MasterGeneral_LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style24
        {
            width: 100%;
        }
        .auto-style25
        {
            width: 131px;
        }
        .auto-style26
        {
            width: 199px;
        text-align: center;
    }
        .auto-style27
        {
            height: 21px;
        }
        .auto-style28
        {
            width: 131px;
            height: 21px;
        }
        .auto-style29
        {
            width: 199px;
            height: 21px;
        }
        .auto-style30
        {
            height: 21px;
            width: 253px;
        }
        .auto-style31
        {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style28" style="text-align: right">
                <asp:Label ID="lblCorreo" runat="server" CssClass="bold" style="text-align: right" Text="Correo Registrado:"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="txtCorreo" runat="server" Width="196px"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25" style="text-align: right">
                <asp:Label ID="lblContraseña" runat="server" CssClass="bold" Text="Contraseña:"></asp:Label>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="txtContraseña" runat="server" Width="196px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25" style="text-align: right">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25" style="text-align: right">&nbsp;</td>
            <td class="auto-style26">
                <asp:Button ID="btnEntrar" runat="server" Height="30px" style="font-weight: 700" Text="Entrar" Width="120px" OnClick="btnEntrar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style25" style="text-align: right">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

