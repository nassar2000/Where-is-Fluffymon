using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Where_is_my_Fluffymoon.Areas.Identity.Data;
using Where_is_my_Fluffymoon.Data;
using Where_is_my_Fluffymoon.Models;

namespace Where_is_my_Fluffymoon.Views
{
    [Authorize]
    public class PetsController : Controller
    {
        private readonly AppDbContext _context;

        private readonly UserManager<ApplicationUser> _userManager;

        public PetsController(AppDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;

            _userManager = userManager;
        }

        // GET: Pets
        public async Task<IActionResult> Index()
        {
            var context = _context.Pet.Include(p => p.ApplicationUser).Where(x => x.ApplicationUserId == User.FindFirstValue(ClaimTypes.NameIdentifier));
            return View(await context.ToListAsync());
        }

        // GET: Pets/Details/5
        public async Task<IActionResult> Details(string id)
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

            ViewData["userId"] = User.FindFirstValue(ClaimTypes.NameIdentifier);

            return View(pet);
        }

        // GET: Pets/Create
        public IActionResult Create()
        {
            ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id");
            return View();
        }

        // POST: Pets/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Name,Description,ImagePath,CoordinatesLong,CoordinatesLat,Created_at,Updated_at,ApplicationUserId")] Pet pet)
        {
            if (ModelState.IsValid)
            {
                pet.Id = Guid.NewGuid().ToString();
                pet.ApplicationUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                pet.Created_at = DateTime.Now;
                pet.Updated_at = DateTime.Now;
                _context.Add(pet);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            //ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id", pet.ApplicationUserId);
            return View(pet);
        }

        // GET: Pets/Edit/5
        public async Task<IActionResult> Edit(string id)
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
            return View(pet);
        }

        // POST: Pets/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Id,Name,Description,ImagePath,CoordinatesLong,CoordinatesLat,Created_at,ApplicationUserId")] Pet pet)
        {
            if (pet.ApplicationUserId != User.FindFirstValue(ClaimTypes.NameIdentifier).ToString())
            {
                return RedirectToAction("Forbidden", "Home");
            }

            pet.Updated_at = DateTime.Now;
            pet.ApplicationUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            if (id != pet.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pet);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PetExists(pet.Id))
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
            //ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id", pet.ApplicationUserId);
            return View(pet);
        }

        // GET: Pets/Delete/5
        public async Task<IActionResult> Delete(string id)
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

            return View(pet);
        }

        // POST: Pets/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var pet = await _context.Pet.FindAsync(id);

            if (pet.ApplicationUserId != User.FindFirstValue(ClaimTypes.NameIdentifier))
            {
                return RedirectToAction("Forbidden", "Home");
            }

            _context.Pet.Remove(pet);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PetExists(string id)
        {
            return _context.Pet.Any(e => e.Id == id);
        }
    }
}
