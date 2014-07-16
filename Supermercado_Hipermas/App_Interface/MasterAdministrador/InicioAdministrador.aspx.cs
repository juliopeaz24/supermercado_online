using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterAdministrador_InicioAdministrador : System.Web.UI.Page
{
    private CBaseDatos conexion;
    private static List<String> losProductos;
    private static DataSet ds;
    List<Productos> canasta;

    protected void Page_Load(object sender, EventArgs e)
    {
        llenarLabel();
    }

    protected void llenarLabel()
    {
        if (Page.IsPostBack == false)
        {
            Label2.Text = Label2.Text + " " + Session["Cliente"];
        }
    }

    protected void NavigationMenuProductos_MenuItemClick(object sender, MenuEventArgs e)
    {
        losProductos = new List<String>();
        ds = new DataSet();
        ds.Clear();
        conexion = new CBaseDatos();

        String[] productos = NavigationMenuProductos.SelectedItem.Value.Split('-');
        if (productos.Count() >= 2)
        {
            losProductos.Add(productos[0]);
            losProductos.Add(productos[1]);
        }
        if (losProductos.Count == 2)
        {

            ds = conexion.LlenarDS("exec getArticulos @cat=" + losProductos[0] + " , @subcat=" + losProductos[1]);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            GridView1.PageSize = 10;
            GridView1.SetPageIndex(0);

            //lstProductos.DataSource = ds;
            //lstProductos.DataBind();

        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        conexion = new CBaseDatos();

        ds = conexion.LlenarDS("exec getArticulos @cat=" + losProductos[0] + " , @subcat=" + losProductos[1]);
        GridView1.DataSource = ds.Tables[0];
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        GridView1.PageSize = 10;
    }


    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        Productos producto = productoSeleccionando();
        if (Session["productos"] == null)
        {

            canasta = new List<Productos>();
            canasta.Add(producto);
            Session.Add("productos", canasta);

        }
        else 
        {
            
            canasta = (List<Productos>)Session["productos"];
            int encontrado = enLista(producto);
            if (encontrado == -1)
            {
                canasta.Add(producto);
            }
            else
            {
                canasta[encontrado].setCantidad(canasta[encontrado].getCantidad() + producto.getCantidad());
                }
            Session.Add("productos", canasta);
        }

        txtCantidad.Text = "";

        string valor = "El producto ha sido agregado al carrito.";
        string scripting = "<script type='text/javascript' language='JavaScript'> function confirm_modifica() {";
        scripting += "if (alert('" + valor + "')==false) { window.location.href = '" + Request.Url + "'; }} ";
        scripting += "confirm_modifica(); </script>";

        ClientScript.RegisterClientScriptBlock(this.GetType(), "Test", scripting, false);

    }
    public Productos productoSeleccionando()
    {
        Productos productoEscogido = new Productos();

        productoEscogido.setId(int.Parse(GridView1.SelectedRow.Cells[1].Text));
        productoEscogido.setNombre(GridView1.SelectedRow.Cells[2].Text);
        productoEscogido.setDescripcion(GridView1.SelectedRow.Cells[3].Text);
        productoEscogido.setPrecio(int.Parse(GridView1.SelectedRow.Cells[4].Text));
        productoEscogido.setCantidad(int.Parse(txtCantidad.Text));
        
        return productoEscogido;
    }
    public int enLista(Productos producto)
    {
        int  encontrado = -1;
        for (int i= 0; i< canasta.Count; i++)
        {
            if (producto.getId() == canasta[i].getId())
            {
                encontrado=i;
                break;
            }
        }
        return encontrado;
    }
}