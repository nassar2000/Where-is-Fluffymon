using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Where_is_my_Fluffymoon.Areas.Identity.Data;

namespace Where_is_my_Fluffymoon.Models
{
    public class Pet
    {
        public Pet()
        {
            this.Comments = new HashSet<Comment>();
        }

        public int Id { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String ImagePath { get; set; }
        public String CoordinatesLong { get; set; }
        public String CoordinatesLat { get; set; }
        public DateTime? Created_at { get; set; }
        public DateTime? Updated_at { get; set; }

        [ForeignKey("ApplicationUser")]
        public string ApplicationUserId { get; set; }
        public ApplicationUser ApplicationUser { get; set; }

        public ICollection<Comment> Comments { get; set; }
    }
}
