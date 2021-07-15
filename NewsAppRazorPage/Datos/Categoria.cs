using System;
using System.Collections.Generic;

#nullable disable

namespace NewsAppRazorPage
{
    public partial class Categoria
    {
        public Categoria()
        {
            Articulos = new HashSet<Articulo>();
        }

        public int IdCategoria { get; set; }
        public string NombreCategoria { get; set; }

        public virtual ICollection<Articulo> Articulos { get; set; }
    }
}
