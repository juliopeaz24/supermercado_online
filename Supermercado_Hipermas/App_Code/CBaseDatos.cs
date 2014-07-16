using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
/// <summary>
/// Summary description for CBaseDatos
/// </summary>
public class CBaseDatos
{
    private OleDbConnection conexion;
    public static string RutaReportes = "C:\\Users\\Rolando\\Documents\\Supermercado_Hipermas\\App_Interface\\MasterAdministrador\\Reportes\\";

    public CBaseDatos()
    {
        
    }

    public void Conectar()
    {
        string cadenaConexion = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Supermercado_Hipermas;Data Source=ROLANDO-HP\\SQLEXPRESS";
        conexion = new OleDbConnection();
        conexion.ConnectionString = cadenaConexion;
        try
        {
            conexion.Open();
        }
        catch (System.Data.OleDb.OleDbException)
        {

        }
    }
    public void Desconectar()
    {
        conexion.Close();
    }
    public void EjecutaSQL(string sql)
    {
        Conectar();

        OleDbCommand Comando = new OleDbCommand(sql, conexion);
        Comando.ExecuteNonQuery();

        Desconectar();
    }

    public DataTable LlenarDT(string sql)
    {
        DataTable DT = new DataTable();
        Conectar();
        System.Data.OleDb.OleDbDataAdapter Adaptador = new System.Data.OleDb.OleDbDataAdapter(sql, conexion);
        Adaptador.Fill(DT);
        Desconectar();
        return DT;
    }

    public DataSet LlenarDS(string sql)
    {
        Conectar();

        DataSet DS = new DataSet();

        OleDbDataAdapter Adaptador = new OleDbDataAdapter(sql, conexion);
        Adaptador.Fill(DS);

        Desconectar();

        return DS;
    }

    public Boolean DatoRepetido(string Tabla, string Campo, string Valor)
    {
        DataSet DS;
        string sql;

        sql = "select * from " + Tabla + " where " + Campo + " = '" + Valor + "'";
        DS = LlenarDS(sql);

        if (DS.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;

    }

}