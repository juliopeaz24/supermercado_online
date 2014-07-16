using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterGeneral_Registro : System.Web.UI.Page
{
    CBaseDatos BaseDatos = new CBaseDatos();
    CControlClientes Mantenimiento = new CControlClientes();
    private DataSet DS;
    CClientes Entidad = new CClientes();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistrarse_Click1(object sender, EventArgs e)
    {
        DS = BaseDatos.LlenarDS("select max(ID_Direccion) + 1 from Direccion");
        object[] datosSeleccionados = DS.Tables[0].Rows[0].ItemArray;
        TxtID_Direccion.Text = datosSeleccionados[0].ToString();

        DS = BaseDatos.LlenarDS("select maX(ID_Cliente) + 1 from Clientes");
        object[] datosSeleccionado = DS.Tables[0].Rows[0].ItemArray;
        TxtID_Cliente.Text = datosSeleccionado[0].ToString();

        Entidad.ID_Persona = Convert.ToInt32(txtID_Persona.Text);
        Entidad.Nombre = txtNombre.Text;
        Entidad.Apellido1 = txtApellido_1.Text;
        Entidad.Apellido2 = txtApellido_2.Text;
        Entidad.Correo = txtCorreo.Text;
        Entidad.Celular = Convert.ToInt32(txtCelular.Text);
        Entidad.Telefono = Convert.ToInt32(txtTel_Habitacion.Text);
        Entidad.Tarjeta = txtNumero_Tarjeta.Text;
        Entidad.Seguridad = Convert.ToInt32(txtCodigo_Seguridad.Text);
        Entidad.Vencimiento = txtFecha_Vencimiento.Text;
        Entidad.Dueño = txtNombre_Dueño_Tarjeta.Text;
        Entidad.Direccion = txtDireccion_Exacta.Text;
        Entidad.Contraseña = txtContraseña.Text;
        Entidad.Provincia = ddlProvincia.Text;
        Entidad.Estado = "True";
        Entidad.ID_Direccion = Convert.ToInt32(TxtID_Direccion.Text);
        Entidad.ID_Cliente = Convert.ToInt32(TxtID_Cliente.Text);
        Mantenimiento.Acciones("Agregar", Entidad);

        string valor = "El registro de los datos fue satisfactorio.";
        string scripting = "<script type='text/javascript' language='JavaScript'> function confirm_modifica() {";
        scripting += "if (alert('" + valor + "')==false) { window.location.href = '" + Request.Url + "'; }} ";
        scripting += "confirm_modifica(); </script>";

        ClientScript.RegisterClientScriptBlock(this.GetType(), "Test", scripting, false);

    }
}