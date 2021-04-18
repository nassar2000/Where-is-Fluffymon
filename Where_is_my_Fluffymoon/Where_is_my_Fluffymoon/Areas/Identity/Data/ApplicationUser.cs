using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Where_is_my_Fluffymoon.Models;

namespace Where_is_my_Fluffymoon.Areas.Identity.Data
{
    // Add profile data for application users by adding properties to the ApplicationUser class
    public class ApplicationUser : IdentityUser
    {
        public ApplicationUser()
        {
            this.Pets = new HashSet<Pet>();
            this.Comments = new HashSet<Comment>();
        }

        [PersonalData]
        [Column(TypeName = "nvarchar(100)")]
        public string FirstName { get; set; }

        [PersonalData]
        [Column(TypeName = "nvarchar(100)")]
        public string LastName { get; set; }

        public ICollection<Pet> Pets { get; set; }

        public ICollection<Comment> Comments { get; set; }
    }
}
