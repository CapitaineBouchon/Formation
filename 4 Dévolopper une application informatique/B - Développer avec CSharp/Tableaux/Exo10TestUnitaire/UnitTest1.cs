using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Exercice10;

namespace Exo10TestUnitaire
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            int[] attendu = new int[10] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            int[] resultat;

            resultat = Program.Erathostene(10);
            Assert.AreEqual(attendu, resultat);
        }
    }
}
