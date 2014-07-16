<%@ Page Title="" Language="C#" MasterPageFile="~/Principal3.master" AutoEventWireup="true" CodeFile="ReporteClientesQueMasCompraronPorMes.aspx.cs" Inherits="App_Interface_MasterAdministrador_Reportes_ReporteClientesQueMasCompraronPorMes" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="auto-style22">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="btnGenerar" runat="server" Height="34px" style="text-align: center; font-weight: 700" Text="Generar" Width="101px" OnClick="btnCargar_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="906px">
                </rsweb:ReportViewer>
            </td>
        </tr>
    </table>
</asp:Content>

