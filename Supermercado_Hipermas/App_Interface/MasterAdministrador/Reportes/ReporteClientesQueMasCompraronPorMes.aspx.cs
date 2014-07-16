using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data.OleDb;
using System.Data;

public partial class App_Interface_MasterAdministrador_Reportes_ReporteClientesQueMasCompraronPorMes : System.Web.UI.Page
{
    public CControlReportes _Reportes = new CControlReportes();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCargar_Click(object sender, EventArgs e)
    {
        DataTable dt = _Reportes.ClientesQueMasCompraronPorMes();
        if (dt != null && dt.Rows.Count > 0)
        {
            btnGenerar.Visible = false;
            cargareporte(dt);
        }
        else
        {
            return;
        }
    }
    private void cargareporte(DataTable dt)
    {
        ReportDataSource rds = new ReportDataSource();
        rds.Name = "DataSet1";
        rds.Value = dt;
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(rds);
        ReportViewer1.LocalReport.ReportPath = CBaseDatos.RutaReportes + "Reporte1.rdlc";
        ReportViewer1.LocalReport.Refresh();
    }

}