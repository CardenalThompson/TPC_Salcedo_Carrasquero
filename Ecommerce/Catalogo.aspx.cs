using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negosio;

namespace Ecommerce
{
    public partial class Catalogo : System.Web.UI.Page
    {
        public List<Producto> listaProducto { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegosio Negosio = new ProductoNegosio();

                    listaProducto = Negosio.listar();//llenamos la variable listaArticulos de todos los articulos en base de datos
        }
    }
}