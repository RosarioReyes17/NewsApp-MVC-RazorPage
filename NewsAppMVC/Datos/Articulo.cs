using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace NewsAppMVC
{
    public partial class Articulo
    {
        public int IdArticulo { get; set; }
        [Required(ErrorMessage ="This field is required")]
        public string Autor { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public string Titulo { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public string ArticuloUrl { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public string ImagenUrl { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public DateTime? FechaPublicacion { get; set; }
        public string Contenido { get; set; }
        [Required(ErrorMessage = "This field is required")]
        public int? IdCategoria { get; set; }
        public int? IdPais { get; set; }
        public int? IdFuente { get; set; }

        public virtual Categoria IdCategoriaNavigation { get; set; }
        public virtual Fuente IdFuenteNavigation { get; set; }
        public virtual Paise IdPaisNavigation { get; set; }
    }
}
