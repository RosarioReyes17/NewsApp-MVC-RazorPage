using System;
using System.Collections.Generic;

#nullable disable

namespace NewsAppMVC
{
    public partial class Articulo
    {
        public int IdArticulo { get; set; }
        public string Autor { get; set; }
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public string ArticuloUrl { get; set; }
        public string ImagenUrl { get; set; }
        public DateTime? FechaPublicacion { get; set; }
        public string Contenido { get; set; }
        public int? IdCategoria { get; set; }
        public int? IdPais { get; set; }
        public int? IdFuente { get; set; }

        public virtual Categoria IdCategoriaNavigation { get; set; }
        public virtual Fuente IdFuenteNavigation { get; set; }
        public virtual Paise IdPaisNavigation { get; set; }
    }
}
