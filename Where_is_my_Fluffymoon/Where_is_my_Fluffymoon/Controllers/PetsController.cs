using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.Web.CodeGeneration.Contracts.Messaging;
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

        private readonly IWebHostEnvironment _webHostEnvironment;

        public PetsController(AppDbContext context, UserManager<ApplicationUser> userManager, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;

            _userManager = userManager;

            _webHostEnvironment = webHostEnvironment;
        }

        // GET: Pets
        public async Task<IActionResult> Index()
        {
            var context = _context.Pet.Include(p => p.ApplicationUser).Where(x => x.ApplicationUserId == User.FindFirstValue(ClaimTypes.NameIdentifier));
            return View(await context.ToListAsync());
        }

        // GET: Pets
        public async Task<IActionResult> Home()
        {
            return Redirect("/");
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

            ViewBag.comments = _context.Comment.Include(p => p.Pet).Where(x => x.PetId == pet.Id).OrderBy(n => n.Created_at);

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

                var files = HttpContext.Request.Form.Files;
                foreach (var customFile in files)
                {
                    if (customFile != null && customFile.Length > 0)
                    {
                        using (var fileStream = new FileStream(Path.Combine(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/PetImages/"), pet.Id + ".jpg"), FileMode.Create))
                        {
                            await customFile.CopyToAsync(fileStream);
                            pet.ImagePath = pet.Id.ToString();
                        }
                    }
                }

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
        public async Task<IActionResult> Edit(string id, [Bind("Id,Name,Description,CoordinatesLong,CoordinatesLat,Created_at,ApplicationUserId")] Pet pet)
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
                    var files = HttpContext.Request.Form.Files;
                    foreach (var customFile in files)
                    {
                        if (customFile != null && customFile.Length > 0)
                        {
                            System.IO.File.Delete(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/PetImages/" + id + ".jpg"));

                            using (var fileStream = new FileStream(Path.Combine(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/PetImages/"), pet.Id + ".jpg"), FileMode.Create))
                            {
                                await customFile.CopyToAsync(fileStream);
                                pet.ImagePath = pet.Id.ToString();
                            }
                        }
                    }

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
                return Redirect(string.Format("~/Pets/Details/{0}", pet.Id));
                //return RedirectToAction(nameof(Index));
            }
            //ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id", pet.ApplicationUserId);
            return Redirect(string.Format("~/Pets/Details/{0}", pet.Id));
            //return View(pet);
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

            System.IO.File.Delete(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/PetImages/" + id + ".jpg"));

            return RedirectToAction(nameof(Index));
        }

        private bool PetExists(string id)
        {
            return _context.Pet.Any(e => e.Id == id);
        }

        // POST: Comments/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CommentsCreate([Bind("Id,Message,CoordinatesLong,CoordinatesLat,Created_at,Updated_at,ApplicationUserId,PetId")] Comment comment)
        {
            if (ModelState.IsValid)
            {
                var petId = comment.PetId;

                comment.Id = Guid.NewGuid().ToString();
                comment.ApplicationUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                comment.Created_at = DateTime.Now;
                comment.Updated_at = DateTime.Now;

                var files = HttpContext.Request.Form.Files;
                foreach (var customFile in files)
                {
                    if (customFile != null && customFile.Length > 0)
                    {
                        using (var fileStream = new FileStream(Path.Combine(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/CommentImages/"), comment.Id + ".jpg"), FileMode.Create))
                        {
                            await customFile.CopyToAsync(fileStream);
                            comment.ImagePath = comment.Id.ToString();
                        }
                    }
                }

                if (comment.Message == null)
                {
                    return Redirect(string.Format("~/Pets/Details/{0}", comment.PetId));
                }

                _context.Add(comment);
                await _context.SaveChangesAsync();

                return Redirect(string.Format("~/Pets/Details/{0}", comment.PetId));
            }
            //ViewData["ApplicationUserId"] = new SelectList(_context.Set<ApplicationUser>(), "Id", "Id", comment.ApplicationUserId);
            //ViewData["PetId"] = new SelectList(_context.Pet, "Id", "Id", comment.PetId);
            return View(comment);
        }

        // POST: Comments/Delete/5
        [HttpPost, ActionName("CommentDeleteConfirmed")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CommentDeleteConfirmed(string id)
        {
            var comment = await _context.Comment.FindAsync(id);
            _context.Comment.Remove(comment);
            await _context.SaveChangesAsync();

            if(comment.ImagePath != null)
            {
                System.IO.File.Delete(Path.Combine(_webHostEnvironment.ContentRootPath, "wwwroot/CommentImages/" + id + ".jpg"));
            }

            return Redirect(string.Format("~/Pets/Details/{0}", comment.PetId));
        }
    }
}
