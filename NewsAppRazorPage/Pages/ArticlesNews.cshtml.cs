using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
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

        

 
        //[BindProperty]
        //public string SelectedCategory { get; set; }

        //public IList<SelectListItem> CategoryList { get; set; } = new List<SelectListItem>();

        //public IActionResult OnPostFilterGenerated()
        //{
        //    return RedirectToPage("Generated", new { Categoria = SelectedCategory });
        //}
        public async Task OnGetAsync(string search = null, string Categoria = null)
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


            //Articulo = new List<Articulo>();

            //CategoryList.Add(new SelectListItem() { Text = "All", Value = "All" });

            //foreach (var categ in Articulo)
            //{
            //    CategoryList.Add(new SelectListItem() { Text = categ.IdCategoriaNavigation.NombreCategoria, Value = Convert.ToString(categ.IdCategoriaNavigation.IdCategoria)}); ;
            //}

            //Articulo = await _context.Articulos.Where(x => x.IdCategoriaNavigation.NombreCategoria.Contains(Categoria)).ToListAsync();


            // load the page


            
        }

  
    }


    
}
