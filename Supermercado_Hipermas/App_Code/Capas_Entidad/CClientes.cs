using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CClientes
/// </summary>
public class CClientes
{
    private string mNombre, mApellido1, mApellido2, mCorreo, mContraseña, mProvincia, mDireccion, mDueño, mEstado, mTarjeta, mVencimiento;
    private int mTelefono, mCelular, mSeguridad, mCedula, mID_Direccion, mID_Persona, mID_Cliente;


    public int ID_Cliente
    {
        get
        {
            return mID_Cliente;
        }

        set
        {
            mID_Cliente = value;
        }
    }
    public int ID_Direccion
    {
        get
        {
            return mID_Direccion;
        }

        set
        {
            mID_Direccion = value;
        }
    }
    public int ID_Persona
    {
        get
        {
            return mID_Persona;
        }

        set
        {
            mID_Persona = value;
        }
    }
    public string Estado
    {
        get
        {
            return mEstado;
        }

        set
        {
            mEstado = value;
        }
    }

    public int Cedula
    {
        get
        {
            return mCedula;
        }

        set
        {
            mCedula = value;
        }
    }

    public string Nombre
    {
        get
        {
            return mNombre;
        }

        set
        {
            mNombre = value;
        }
    }

    public string Apellido1
    {
        get
        {
            return mApellido1;
        }

        set
        {
            mApellido1 = value;
        }
    }

    public string Apellido2
    {
        get
        {
            return mApellido2;
        }

        set
        {
            mApellido2 = value;
        }
    }

    public string Correo
    {
        get
        {
            return mCorreo;
        }

        set
        {
            mCorreo = value;
        }
    }

    public string Contraseña
    {
        get
        {
            return mContraseña;
        }

        set
        {
            mContraseña = value;
        }
    }

    public string Provincia
    {
        get
        {
            return mProvincia;
        }

        set
        {
            mProvincia = value;
        }
    }

    public string Direccion
    {
        get
        {
            return mDireccion;
        }

        set
        {
            mDireccion = value;
        }
    }

    public int Telefono
    {
        get
        {
            return mTelefono;
        }

        set
        {
            mTelefono = value;
        }
    }

    public int Celular
    {
        get
        {
            return mCelular;
        }

        set
        {
            mCelular = value;
        }
    }

    public string Tarjeta
    {
        get
        {
            return mTarjeta;
        }

        set
        {
            mTarjeta = value;
        }
    }

    public int Seguridad
    {
        get
        {
            return mSeguridad;
        }

        set
        {
            mSeguridad = value;
        }
    }

    public string Vencimiento
    {
        get
        {
            return mVencimiento;
        }

        set
        {
            mVencimiento = value;
        }
    }

    public string Dueño
    {
        get
        {
            return mDueño;
        }

        set
        {
            mDueño = value;
        }
    }
}