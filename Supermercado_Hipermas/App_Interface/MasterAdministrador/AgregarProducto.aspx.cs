using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterAdministrador_AgregarProducto : System.Web.UI.Page
{
    CBaseDatos BaseDatos = new CBaseDatos();
    CControlProductos Mantenimiento = new CControlProductos();
    private DataSet DS;
    CProductos Entidad = new CProductos();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtID_Inventario_TextChanged(object sender, EventArgs e)
    {


    }

    protected void btnAgregar_Click1(object sender, EventArgs e)
    {
        Entidad.ID_Producto = Convert.ToInt32(txtID_Producto.Text);
        Entidad.Nombre = txtNombre.Text;
        Entidad.Descripcion = txtDescripcion.Text;
        Entidad.Precio = Convert.ToInt32(txtPrecio.Text);
        Entidad.ID_Subcategorias = Convert.ToInt32(ddlSubcategoria.Text);
        Entidad.ID_Inventario = Convert.ToInt32(txtID_Producto.Text);
        Entidad.Existencia = Convert.ToInt32(txtExistencias.Text);
        Mantenimiento.Acciones("Agregar", Entidad);

        string valor = "El producto se ha agregado satisfactoriamente.";
        string scripting = "<script type='text/javascript' language='JavaScript'> function confirm_modifica() {";
        scripting += "if (alert('" + valor + "')==false) { window.location.href = '" + Request.Url + "'; }} ";
        scripting += "confirm_modifica(); </script>";

        ClientScript.RegisterClientScriptBlock(this.GetType(), "Test", scripting, false);
    }
}