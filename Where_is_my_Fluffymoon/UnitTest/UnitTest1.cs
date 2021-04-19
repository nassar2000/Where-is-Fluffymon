using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading.Tasks;
using System.Web.Mvc;
using Where_is_my_Fluffymoon.Data;
using Where_is_my_Fluffymoon.Models;
using Where_is_my_Fluffymoon.Views;

namespace UnitTest
{
    [TestClass]
    public class UnitTest1
    {

        

        [TestMethod]
        public void CheckPetCreate()
        {
            var created_at = new DateTime(2020, 3, 1, 7, 0, 0);
            var updated_at = new DateTime(2021, 3, 1, 7, 0, 0);

            Pet pet = new Pet() {

                Name = "pisi",
                Description = "am pierdut pisica",
                ImagePath = " ssssssssssss",
                CoordinatesLong = "ddddddddddd",
                CoordinatesLat = "sssssss",
                Created_at = created_at,
                Updated_at = updated_at

            };

            Assert.IsInstanceOfType(pet, typeof(Pet));
            Assert.IsNotNull(pet);
            PetsControllerTest petsController = new PetsControllerTest();

            petsController.Create(pet);

            foreach (Pet pet1 in petsController.GetPets())
            {
                Assert.IsInstanceOfType(pet1, typeof(Pet));
            }

        }
    }
}
