using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CapaDatos;

namespace CapaLogica
{
    public class Negocio
    {
        Producto objProducto = new Producto();

        public  DataTable mostrarProductos()
        {
            DataTable tabla = new DataTable();
            tabla = objProducto.verProductos();
            return tabla;
        }
    }
}
