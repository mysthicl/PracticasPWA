using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogica;

namespace CapaPresentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Negocio objNegocio = new Negocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = objNegocio.mostrarProductos();
            GridView1.DataBind();
        }
    }
}