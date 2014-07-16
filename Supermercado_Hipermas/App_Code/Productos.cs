using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Productos
/// </summary>
public class Productos
{
    private int id;
    private string nombre;
    private string descripcion;
    private int precio;
    private int cantidad;
	public Productos()
	{
    
        
	}
    public void setId(int id) 
    {
        this.id = id;
    }
    public int getId()
    {
        return id;
    }
    public void setNombre(string  nombre)
    {
        this.nombre = nombre;
    }
    public string getNombre()
    {
        return nombre;
    }
    public void setDescripcion(string descripcion)
    {
        this.descripcion = descripcion;
    }
    public string getDescripcion()
    {
        return descripcion;
    }
    public void setPrecio(int precio)
    {
        this.precio = precio;
    }
    public int getPrecio()
    {
        return precio;
    }
    public void setCantidad(int cantidad)
    {
        this.cantidad = cantidad;
    }
    public int getCantidad()
    {
        return cantidad;
    }
}