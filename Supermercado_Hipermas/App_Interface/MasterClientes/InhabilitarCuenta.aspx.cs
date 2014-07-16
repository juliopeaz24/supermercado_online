using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Interface_MasterClientes_InhabilitarCuenta : System.Web.UI.Page
{
    CClientes Entidad = new CClientes();
    CControlClientes Mantenimiento = new CControlClientes();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInhabilitarCuenta_Click(object sender, EventArgs e)
    {
        Entidad.Estado = "False";
        Mantenimiento.Acciones("Inhabiltar", Entidad);
    }
}