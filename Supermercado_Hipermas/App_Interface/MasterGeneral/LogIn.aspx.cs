using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class App_Interface_MasterGeneral_LogIn : System.Web.UI.Page
{
    private CBaseDatos conexion;
    private DataSet datos;
    protected void Page_Load(object sender, EventArgs e)
    {
        conexion = new CBaseDatos();
        datos = conexion.LlenarDS("exec login");
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        int i;
        for (i = 0; i < datos.Tables[0].Rows.Count; i++)
        {
            object[] fila = datos.Tables[0].Rows[i].ItemArray;
            string usuario = fila[0].ToString();
            string contraseña = fila[1].ToString();
            if (txtCorreo.Text.Equals(usuario) && usuario.Equals("admin") && txtContraseña.Text.Equals(contraseña))
            {
                Session.Add("Cliente", fila[3].ToString());
                Session.Add("Id_Cliente", fila[2].ToString());
                Session.Add("Cedula", fila[4].ToString());
                Response.Redirect("/Supermercado_Hipermas/App_Interface/MasterAdministrador/InicioAdministrador.aspx");

            }
            else if (txtCorreo.Text.Equals(usuario) && usuario != "admin" && txtContraseña.Text.Equals(contraseña))
            {
                Session.Add("Cliente", fila[3].ToString());
                Session.Add("Id_Cliente", fila[2].ToString());
                Session.Add("Cedula",fila[4].ToString());
                Response.Redirect("/Supermercado_Hipermas/App_Interface/MasterClientes/InicioClientes.aspx");

            }
        }

    }
   
}