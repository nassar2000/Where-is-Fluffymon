using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Where_is_my_Fluffymoon.Models;

namespace UnitTest
{
    public class PetsControllerTest
    {
        List<Pet> petList;

        public PetsControllerTest()
        {

        }

        public void Create(Pet pet)
        {
            petList.Add(pet);

        }

        public List<Pet> GetPets()
        {
            return petList;
        }

    }
}
