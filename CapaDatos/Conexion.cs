using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Conexion
    {
        public SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-JTDKSO4;Initial Catalog=practica2;Integrated Security=True");

        public SqlConnection abrirConexion()
        {
            if(conexion.State == System.Data.ConnectionState.Closed)
                conexion.Open();
                return conexion;
        }
        public SqlConnection cerrarConexion()
        {
            if (conexion.State == System.Data.ConnectionState.Open)
                conexion.Close();
            return conexion;
        }
    }
}
