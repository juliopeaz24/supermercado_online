using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CProductos
/// </summary>
public class CProductos
{

    private int mID_Producto, mPrecio, mID_Subcategoria, mID_Inventario, mExistencia;
    private string mNombre, mDescripcion;

    public int ID_Producto
    {
        get
        {
            return mID_Producto;
        }

        set
        {
            mID_Producto = value;
        }
    }
    public int Precio
    {
        get
        {
            return mPrecio;
        }

        set
        {
            mPrecio = value;
        }
    }
    public int ID_Subcategorias
    {
        get
        {
            return mID_Subcategoria;
        }

        set
        {
            mID_Subcategoria = value;
        }

    }
    public int ID_Inventario
    {
        get
        {
            return mID_Inventario;
        }

        set
        {
            mID_Inventario = value;
        }
    }
    public int Existencia
    {
        get
        {
            return mExistencia;
        }

        set
        {
            mExistencia = value;
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
    public string Descripcion
    {
        get
        {
            return mDescripcion;
        }

        set
        {
            mDescripcion = value;
        }
    }
}