using System;
using System.Collections.Generic;

#nullable disable

namespace NewsAppMVC
{
    public partial class Paise
    {
        public Paise()
        {
            Articulos = new HashSet<Articulo>();
        }

        public int IdPais { get; set; }
        public string NombrePais { get; set; }

        public virtual ICollection<Articulo> Articulos { get; set; }
    }
}
