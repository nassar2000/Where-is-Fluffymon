using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Collections;
using System.Threading.Tasks;
using Where_is_my_Fluffymoon.Areas.Identity.Data;
using Where_is_my_Fluffymoon.Models;

namespace Where_is_my_Fluffymoon.Data
{
    public interface IDbContext
    {
        public DbSet<Where_is_my_Fluffymoon.Models.Pet> Pet { get; set; }

        public DbSet<Where_is_my_Fluffymoon.Models.Comment> Comment { get; set; }
        int SaveChanges();
        IEnumerable Set<T>();
        void Update(Pet pet);
        Task SaveChangesAsync();
    }

    public class AppDbContext : IdentityDbContext<ApplicationUser>
    {


        public AppDbContext(DbContextOptions<AppDbContext> options)
            : base(options)
        {
        }

        public DbSet<Where_is_my_Fluffymoon.Models.Pet> Pet { get; set; }

        public DbSet<Where_is_my_Fluffymoon.Models.Comment> Comment { get; set; }


    }
}
