using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for CControlProductos
/// </summary>
public class CControlProductos
{
    CBaseDatos BaseDatos = new CBaseDatos();

    public void Acciones(string Accion, CProductos Entidad)
    {
        string SQL;

        switch (Accion)
        {
            case "Agregar":
                {


                    SQL = "insert into dbo.Productos(ID_Producto,Nombre,Descripcion,Precio,ID_Subcategoria) values ('" + Entidad.ID_Producto + "','" + Entidad.Nombre + "','" + Entidad.Descripcion + "','" + Entidad.Precio + "','" + Entidad.ID_Subcategorias + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "insert into dbo.Inventario(ID_Inventario, Id_Producto, Existencia) values ('" + Entidad.ID_Inventario + "','" + Entidad.ID_Inventario + "','" + Entidad.Existencia + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    break;
                }
            default:
                break;
        }
    }
}