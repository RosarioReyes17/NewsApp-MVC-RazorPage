using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using NewsAppRazorPage;

namespace NewsAppRazorPage.Pages
{
    public class ArticlesNewsModel : PageModel
    {
        private readonly NewsAppRazorPage.NewsAppContext _context;

        public ArticlesNewsModel(NewsAppRazorPage.NewsAppContext context)
        {
            _context = context;
        }

        public IList<Articulo> Articulo { get;set; }

        public async Task OnGetAsync(string search = null)
        {
            ViewData[nameof(search)] = search;

            if (string.IsNullOrEmpty(search))
            {
                Articulo = await _context.Articulos
               .Include(a => a.IdCategoriaNavigation)
               .Include(a => a.IdFuenteNavigation)
               .Include(a => a.IdPaisNavigation).ToListAsync();
            }
            else
            {
                Articulo = await _context.Articulos
                .Include(a => a.IdCategoriaNavigation)
                .Include(a => a.IdFuenteNavigation)
                .Include(a => a.IdPaisNavigation)
                .Where(a=> a.Titulo.Contains(search)).
                ToListAsync();
            }

            
        }
    }
}
