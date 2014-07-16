using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class CControlReportes
{
    public static CBaseDatos BD = new CBaseDatos();

	public CControlReportes()
	{
		
    }
    public DataTable ClientesQueMasCompraronPorMes()
    {
        string sql = "exec sp_ClientesQueMasCompraronPorMes";
        DataTable resultados = BD.LlenarDT(sql);
        if (resultados != null && resultados.Rows.Count > 0)
        {
            return resultados;
        }
        return null;
    }

    public DataTable ReporteProductosMasVendidosPorMes()
    {
        string sql = "exec sp_ReporteProductosMasVendidosPorMes";
        DataTable resultados = BD.LlenarDT(sql);
        if (resultados != null && resultados.Rows.Count > 0)
        {
            return resultados;
        }
        return null;
    }

    public DataTable ReporteProductosMenosVendidosPorMes()
    {
        string sql = "exec sp_ReporteProductosMenosVendidosPorMes";
        DataTable resultados = BD.LlenarDT(sql);
        if (resultados != null && resultados.Rows.Count > 0)
        {
            return resultados;
        }
        return null;
    }

    public DataTable VentasPorMes()
    {
        string sql = "exec sp_VentasPorMes";
        DataTable resultados = BD.LlenarDT(sql);
        if (resultados != null && resultados.Rows.Count > 0)
        {
            return resultados;
        }
        return null;
    }

}