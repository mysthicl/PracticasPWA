using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class Producto
    {
        Conexion objConexion = new Conexion();
        SqlDataReader leer;
        DataTable tablaDatos = new DataTable();
        SqlCommand comando = new SqlCommand();

        public DataTable verProductos()
        {
            comando.Connection = objConexion.abrirConexion();
            comando.CommandText = "sp_mostrar_producto";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tablaDatos.Load(leer);
            objConexion.cerrarConexion();
            return tablaDatos;
        }
    }
}
