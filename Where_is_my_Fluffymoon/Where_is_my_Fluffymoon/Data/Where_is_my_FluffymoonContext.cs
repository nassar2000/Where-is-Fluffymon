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

        public DbSet<Where_is_my_Fluffymoon.Models.Pet> Pet { get; set; }

        public DbSet<Where_is_my_Fluffymoon.Models.Comment> Comment { get; set; }
    }
}
