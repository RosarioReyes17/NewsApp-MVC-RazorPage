using System;
using System.Collections.Generic;

#nullable disable

namespace NewsAppRazorPage
{
    public partial class Fuente
    {
        public Fuente()
        {
            Articulos = new HashSet<Articulo>();
        }

        public int IdFuente { get; set; }
        public string NombreFuente { get; set; }

        public virtual ICollection<Articulo> Articulos { get; set; }
    }
}
