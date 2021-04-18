using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Where_is_my_Fluffymoon.Models;

namespace Where_is_my_Fluffymoon.Data
{
    public class Where_is_my_FluffymoonContext : DbContext
    {
        public Where_is_my_FluffymoonContext (DbContextOptions<Where_is_my_FluffymoonContext> options)
            : base(options)
        {
        }

        public DbSet<Where_is_my_Fluffymoon.Models.Comment> Comment { get; set; }

        public DbSet<Where_is_my_Fluffymoon.Models.Pet> Pet { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }
    }
}
