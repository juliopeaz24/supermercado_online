using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterClientes_Factura : System.Web.UI.Page
{
    CBaseDatos conexion;
    DataSet ds;
    int subtotal;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblID_Cliente.Text = "Id Cliente: "+ Session["Id_Cliente"].ToString();
        lblNombre.Text ="Nombre: "+ Session["Cliente"].ToString();
        llenarFactura(Session["Id_Cliente"].ToString());
    }
    public void llenarFactura(String idCliente)
    {
        conexion = new CBaseDatos();
        ds = conexion.LlenarDS("exec verFactura @idCliente =" + idCliente);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            subtotal = subtotal + (int.Parse(GridView1.Rows[i].Cells[1].Text) * int.Parse(GridView1.Rows[i].Cells[2].Text));
        }
        lblSubtotal.Text ="Subtotal (sin I.V.A.): "+ subtotal.ToString();
        lblTotal.Text = "Total (con I.V.A.): "+(subtotal * 1.13).ToString();
    }
}