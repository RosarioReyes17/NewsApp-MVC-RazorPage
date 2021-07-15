using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NewsAppMVC;

namespace NewsAppMVC.Controllers
{
    public class ArticulosController : Controller
    {
        private readonly NewsAppContext _context;

        public ArticulosController(NewsAppContext context)
        {
            _context = context;
        }

        // GET: Articulos
        public async Task<IActionResult> Index()
        {
            var newsAppContext = _context.Articulos.Include(a => a.IdCategoriaNavigation).Include(a => a.IdFuenteNavigation).Include(a => a.IdPaisNavigation);
            return View(await newsAppContext.ToListAsync());
        }

        // GET: Articulos/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var articulo = await _context.Articulos
                .Include(a => a.IdCategoriaNavigation)
                .Include(a => a.IdFuenteNavigation)
                .Include(a => a.IdPaisNavigation)
                .FirstOrDefaultAsync(m => m.IdArticulo == id);
            if (articulo == null)
            {
                return NotFound();
            }

            return View(articulo);
        }

        // GET: Articulos/Create
        public IActionResult Create()
        {
            ViewData["IdCategoria"] = new SelectList(_context.Categorias, "IdCategoria", "NombreCategoria");
            ViewData["IdFuente"] = new SelectList(_context.Fuentes, "IdFuente", "NombreFuente");
            ViewData["IdPais"] = new SelectList(_context.Paises, "IdPais", "NombrePais");
            return View();
        }

        // POST: Articulos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdArticulo,Autor,Titulo,Descripcion,ArticuloUrl,ImagenUrl,FechaPublicacion,Contenido,IdCategoria,IdPais,IdFuente")] Articulo articulo)
        {
            if (ModelState.IsValid)
            {
                _context.Add(articulo);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCategoria"] = new SelectList(_context.Categorias, "IdCategoria", "NombreCategoria", articulo.IdCategoria);
            ViewData["IdFuente"] = new SelectList(_context.Fuentes, "IdFuente", "NombreFuente", articulo.IdFuente);
            ViewData["IdPais"] = new SelectList(_context.Paises, "IdPais", "NombrePais", articulo.IdPais);
            return View(articulo);
        }

        // GET: Articulos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var articulo = await _context.Articulos.FindAsync(id);
            if (articulo == null)
            {
                return NotFound();
            }
            ViewData["IdCategoria"] = new SelectList(_context.Categorias, "IdCategoria", "NombreCategoria", articulo.IdCategoria);
            ViewData["IdFuente"] = new SelectList(_context.Fuentes, "IdFuente", "NombreFuente", articulo.IdFuente);
            ViewData["IdPais"] = new SelectList(_context.Paises, "IdPais", "NombrePais", articulo.IdPais);
            return View(articulo);
        }

        // POST: Articulos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdArticulo,Autor,Titulo,Descripcion,ArticuloUrl,ImagenUrl,FechaPublicacion,Contenido,IdCategoria,IdPais,IdFuente")] Articulo articulo)
        {
            if (id != articulo.IdArticulo)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(articulo);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ArticuloExists(articulo.IdArticulo))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCategoria"] = new SelectList(_context.Categorias, "IdCategoria", "NombreCategoria", articulo.IdCategoria);
            ViewData["IdFuente"] = new SelectList(_context.Fuentes, "IdFuente", "NombreFuente", articulo.IdFuente);
            ViewData["IdPais"] = new SelectList(_context.Paises, "IdPais", "NombrePais", articulo.IdPais);
            return View(articulo);
        }

        // GET: Articulos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var articulo = await _context.Articulos
                .Include(a => a.IdCategoriaNavigation)
                .Include(a => a.IdFuenteNavigation)
                .Include(a => a.IdPaisNavigation)
                .FirstOrDefaultAsync(m => m.IdArticulo == id);
            if (articulo == null)
            {
                return NotFound();
            }

            return View(articulo);
        }

        // POST: Articulos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var articulo = await _context.Articulos.FindAsync(id);
            _context.Articulos.Remove(articulo);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ArticuloExists(int id)
        {
            return _context.Articulos.Any(e => e.IdArticulo == id);
        }
    }
}
