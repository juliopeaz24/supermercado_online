using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for CControlClientes
/// </summary>
public class CControlClientes
{
    CBaseDatos BaseDatos = new CBaseDatos();
    public void Acciones(string Accion, CClientes Entidad)
    {
        string SQL;

        switch (Accion)
        {
            case "Agregar":
                {
                    SQL = "insert into dbo.Usuario(Correo,Contraseña) values ('" + Entidad.Correo + "','" + Entidad.Contraseña + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "insert into dbo.Personas(ID_Persona,Nombre,Apellido_1,Apellido_2,Correo,Celular,Tel_Habitacion,Numero_Tarjeta,Codigo_Seguridad,Fecha_Vencimiento,Nombre_Dueño_Tarjeta) values ('" + Entidad.ID_Persona + "','" + Entidad.Nombre + "','" + Entidad.Apellido1 + "','" + Entidad.Apellido2 + "','" + Entidad.Correo + "','" + Entidad.Celular + "','" + Entidad.Telefono + "','" + Entidad.Tarjeta + "','" + Entidad.Seguridad + "','" + Entidad.Vencimiento + "','" + Entidad.Dueño + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "insert into dbo.Direccion(ID_Direccion,ID_Provincia,Direccion_Exacta) values ('" + Entidad.ID_Direccion + "','" + Entidad.Provincia + "','" + Entidad.Direccion + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "insert into dbo.Clientes(ID_Cliente,ID_Persona,ID_Direccion,Estado) values ('" + Entidad.ID_Cliente + "','" + Entidad.ID_Persona + "','" + Entidad.ID_Direccion + "','" + Entidad.Estado + "')";
                    BaseDatos.EjecutaSQL(SQL);
                    break;
                }
            case "Inhabilitar":
                {
                    SQL = "update from dbo.Clientes set Estado ='" + Entidad.Estado + "' where Correo = '" + Entidad.Correo + "'";
                    BaseDatos.EjecutaSQL(SQL);
                    break;
                }
            
            case "Modificar":
                {

                    SQL = "update dbo.Usuario set Contraseña ='" + Entidad.Contraseña + "'where Correo ='" + Entidad.Correo + "'";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "update dbo.Personas set Nombre ='" + Entidad.Nombre + "', Apellido_1 ='" + Entidad.Apellido1 + "',Apellido_2 ='" + Entidad.Apellido2 + "',Correo ='" + Entidad.Correo + "',Celular ='" + Entidad.Celular + "',Tel_Habitacion ='" + Entidad.Telefono + "',Numero_Tarjeta ='" + Entidad.Tarjeta + "',Codigo_Seguridad ='" + Entidad.Seguridad + "',Fecha_Vencimiento ='" + Entidad.Vencimiento + "',Nombre_Dueño_Tarjeta ='" + Entidad.Dueño + "' where ID_Persona ='" + Entidad.ID_Persona + "'";
                    BaseDatos.EjecutaSQL(SQL);
                    SQL = "update dbo.Direccion set ID_Provincia ='" + Entidad.Provincia + "', Direccion_Exacta ='" + Entidad.Direccion + "'where ID_Direccion ='" + Entidad.ID_Direccion + "'";
                    BaseDatos.EjecutaSQL(SQL);
                    break;
                }

            default:
                break;
        }
    }
}