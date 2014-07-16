using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterAdministrador_Carrito : System.Web.UI.Page
{
    private List<Productos> productos;
    private CBaseDatos conexion;

    protected void Page_Load(object sender, EventArgs e)
    {
        productos = (List<Productos>)Session["productos"];
        DataTable canasta = llenarTabla();
        GridView2.DataSource = canasta;
        GridView2.DataBind();
    }

    public DataTable llenarTabla()
    {
        DataTable unaTabla = new DataTable();
        unaTabla.Columns.Add("ID_Producto");
        unaTabla.Columns.Add("Nombre");
        unaTabla.Columns.Add("Descripcion");
        unaTabla.Columns.Add("Precio");
        unaTabla.Columns.Add("Cantidad");
        if (productos != null)
        {
            for (int i = 0; i < productos.Count; i++)
            {
                DataRow fila = unaTabla.NewRow();
                fila[0] = productos[i].getId();
                fila[1] = productos[i].getNombre();
                fila[2] = productos[i].getDescripcion();
                fila[3] = productos[i].getPrecio();
                fila[4] = productos[i].getCantidad();
                unaTabla.Rows.Add(fila);
            }
        }
        return unaTabla;
    }

    protected void btnFacturar_Click(object sender, EventArgs e)
    {
        conexion = new CBaseDatos();
        DataSet ds = new DataSet();
        ds = conexion.LlenarDS("Select count(ID_Factura) From dbo.Factura");
        int idFactura;
        int idDetalle;
        if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == "0")
        {
            idFactura = 1;
            conexion.EjecutaSQL("exec llenarFactura @IdFactura =" + idFactura + " , @IdCLiente =" + Session["Id_Cliente"]);
        }
        else
        {
            idFactura = int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString()) + 1;
            conexion.EjecutaSQL("exec llenarFactura @IdFactura =" + idFactura + ", @IdCLiente =" + Session["Id_Cliente"]);
        }
        ds = conexion.LlenarDS("Select COUNT(ID_Factura_Detalle) From Factura_Detalle");


        if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == "0")
        {
            idDetalle = 1;
        }
        else
        {
            idDetalle = int.Parse(ds.Tables[0].Rows[0].ItemArray[0].ToString()) + 1;
        }
        for (int i = 0; i < productos.Count; i++)
        {
            conexion.EjecutaSQL("exec sacarInventario @IdProducto =" + productos[i].getId() + " , @Cantidad =" + productos[i].getCantidad() +
                ", @IdFacturaDetalle =" + idDetalle + ",@IdFactura =" + idFactura);
            idDetalle += 1;
        }
        Response.Redirect("/Supermercado_Hipermas/App_Interface/MasterAdministrador/Factura.aspx");
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        productos.RemoveAt(GridView2.SelectedIndex);
        DataTable canasta = llenarTabla();
        GridView2.DataSource = canasta;
        GridView2.DataBind();
    }
}