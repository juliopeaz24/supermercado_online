using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterClientes_ModificarCuenta : System.Web.UI.Page
{
    CBaseDatos BaseDatos = new CBaseDatos();
    CControlClientes Mantenimiento = new CControlClientes();
    private DataSet DS;
    CClientes Entidad = new CClientes();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void LlenarDatos()
    {
        DS = BaseDatos.LlenarDS("EXECUTE dbo.Modicar_Cliente'" + txtID_Persona.Text + "'");
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        DS = BaseDatos.LlenarDS("Exec Datos'" + txtID_Persona.Text + "'");
        object[] datosSeleccionado = DS.Tables[0].Rows[0].ItemArray;
        TxtID_Direccion.Text = datosSeleccionado[0].ToString();
        TxtID_Cliente.Text = datosSeleccionado[1].ToString();
        TxtEstado.Text = datosSeleccionado[2].ToString();
        TxtCorreo.Text = datosSeleccionado[3].ToString();

        Entidad.Celular = Convert.ToInt32(txtID_Persona.Text);
        Entidad.ID_Persona = Convert.ToInt32(txtID_Persona.Text);
        Entidad.Nombre = txtNombre.Text;
        Entidad.Apellido1 = txtApellido_1.Text;
        Entidad.Apellido2 = txtApellido_2.Text;
        Entidad.Celular = Convert.ToInt32(txtCelular.Text);
        Entidad.Telefono = Convert.ToInt32(txtTel_Habitacion.Text);
        Entidad.Tarjeta = txtNumero_Tarjeta.Text;
        Entidad.Seguridad = Convert.ToInt32(txtCodigo_Seguridad.Text);
        Entidad.Vencimiento = txtFecha_Vencimiento.Text;
        Entidad.Dueño = txtNombre_Dueño_Tarjeta.Text;
        Entidad.Direccion = txtDireccion_Exacta.Text;
        Entidad.Contraseña = txtContraseña.Text;
        Entidad.Provincia = ddlProvincia.Text;
        Entidad.ID_Direccion = Convert.ToInt32(TxtID_Direccion.Text);
        Entidad.Correo = TxtCorreo.Text;
        Entidad.Estado = TxtEstado.Text;
        Entidad.ID_Cliente = Convert.ToInt32(TxtID_Cliente.Text);

        Mantenimiento.Acciones("Modificar", Entidad);
        string valor = "Los cambios se han realizado satisfactoriamente.";
        string scripting = "<script type='text/javascript' language='JavaScript'> function confirm_modifica() {";
        scripting += "if (alert('" + valor + "')==false) { window.location.href = '" + Request.Url + "'; }} ";
        scripting += "confirm_modifica(); </script>";

        ClientScript.RegisterClientScriptBlock(this.GetType(), "Test", scripting, false);
      
    }
    protected void btnCargar_Click(object sender, EventArgs e)
    {
        LlenarDatos();
        object[] datosSeleccionados = DS.Tables[0].Rows[0].ItemArray;
        txtNombre.Text = datosSeleccionados[0].ToString();
        txtApellido_1.Text = datosSeleccionados[1].ToString();
        txtApellido_2.Text = datosSeleccionados[2].ToString();
        txtCelular.Text = datosSeleccionados[3].ToString();
        txtTel_Habitacion.Text = datosSeleccionados[4].ToString();
        txtNumero_Tarjeta.Text = datosSeleccionados[5].ToString();
        txtCodigo_Seguridad.Text = datosSeleccionados[6].ToString();
        txtFecha_Vencimiento.Text = datosSeleccionados[7].ToString();
        txtNombre_Dueño_Tarjeta.Text = datosSeleccionados[8].ToString();
        txtDireccion_Exacta.Text = datosSeleccionados[9].ToString();
        txtContraseña.Text = datosSeleccionados[10].ToString();
        ddlProvincia.Text = datosSeleccionados[11].ToString();
    }
}