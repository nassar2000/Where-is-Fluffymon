using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Threading.Tasks;
using Where_is_my_Fluffymoon.Data;
using Where_is_my_Fluffymoon.Models;
using Where_is_my_Fluffymoon.Views;

namespace UnitTest
{
    [TestClass]
    public class PetsControllerTest
    {


        [TestMethod]
        public async Task CheckPetCreateAsync()
        {


            var optionsBuilder = new DbContextOptionsBuilder<AppDbContext>().UseInMemoryDatabase(databaseName: "WIMF").Options;
            var context = new AppDbContext(optionsBuilder);
            var created_at = new DateTime(2020, 3, 1, 7, 0, 0);
            var updated_at = new DateTime(2021, 3, 1, 7, 0, 0);

            Pet pet = new()
            {

                Name = "pisi",
                Description = "am pierdut pisica",
                ImagePath = " ssssssssssss",
                CoordinatesLong = "ddddddddddd",
                CoordinatesLat = "sssssss",
                Created_at = created_at,
                Updated_at = updated_at

            };


            PetsController petsController = new(context);

            var actionResult = await petsController.Create(pet);


            Assert.IsInstanceOfType(actionResult, typeof(RedirectToActionResult));


        }


        [TestMethod]
        public async Task CheckPetEditAsync()
        {

            var optionsBuilder = new DbContextOptionsBuilder<AppDbContext>().UseInMemoryDatabase(databaseName: "WIMF").Options;

            var context = new AppDbContext(optionsBuilder);

            const int id = 1;

            PetsController petsController = new(context);

            var actionResult = await petsController.Edit(id);

            Assert.IsInstanceOfType(actionResult, typeof(ViewResult));


        }


    }
}
