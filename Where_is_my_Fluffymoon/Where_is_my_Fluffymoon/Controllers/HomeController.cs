using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Where_is_my_Fluffymoon.Areas.Identity.Data;
using Where_is_my_Fluffymoon.Data;
using Where_is_my_Fluffymoon.Models;

namespace Where_is_my_Fluffymoon.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;

        private readonly UserManager<ApplicationUser> _userManager;

        public HomeController(ILogger<HomeController> logger, AppDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;

            _userManager = userManager;
        }

        //// GET: HomeController
        //public ActionResult Index()
        //{
        //    return View();
        //}

        public IActionResult Forbidden()
        {
            return View();
        }

        public async Task<IActionResult> Index()
        {
            var appDbContext = _context.Pet.Include(p => p.ApplicationUser);

            ViewData["userId"] = User.FindFirstValue(ClaimTypes.NameIdentifier);

            return View(await appDbContext.ToListAsync());
        }

        public IActionResult Pets()
        {
            return Redirect("/Pets");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        // GET: Pets/Details/5
        public async Task<IActionResult> Details(string? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pet = await _context.Pet
                .Include(p => p.ApplicationUser)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pet == null)
            {
                return NotFound();
            }

            return Redirect("/Pets/Details/" + id);
        }

        // GET: Pets/Edit/5
        public async Task<IActionResult> Edit(string? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pet = await _context.Pet.FindAsync(id);
            if (pet == null)
            {
                return NotFound();
            }

            if (pet.ApplicationUserId != User.FindFirstValue(ClaimTypes.NameIdentifier))
            {
                return RedirectToAction("Forbidden", "Home");
            }

            ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id", pet.ApplicationUserId);
            return Redirect("/Pets/Edit/" + id);
        }

        // GET: Pets/Delete/5
        public async Task<IActionResult> Delete(string? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pet = await _context.Pet
                .Include(p => p.ApplicationUser)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pet == null)
            {
                return NotFound();
            }

            if (pet.ApplicationUserId != User.FindFirstValue(ClaimTypes.NameIdentifier))
            {
                return RedirectToAction("Forbidden", "Home");
            }

            return Redirect("/Pets/Delete/" + id);
        }
    }
}
