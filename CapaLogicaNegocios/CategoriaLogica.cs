using CapaAccesoDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogicaNegocios
{
    public class CategoriaLogica
    {
        //objeto de la clase CategoriaDatos
        private CategoriaDatos Datos = new CategoriaDatos();

        //obatener categoria
        public Categoria GetCategoria(int? IdCategoria) {
            return Datos.GetCategoriaById(IdCategoria);
        }

        //metodo para la seleccion de datos
        public DataTable ListaCategorias() {
            return Datos.SelectCategoriaDatos();
        }

        //metodo para agrear una categoria
        public bool AgregarCategoria(Categoria categoria) {
            return Datos.InsertCategoria(categoria);
        }

        public bool ActualizarCategoria(Categoria categoria) {
            return Datos.UpdateCategoria(categoria);
        }

        public bool EliminarCategoria(int? IdCategoria) {
            return Datos.DeleteCategoria(IdCategoria);
        }
    }
}
