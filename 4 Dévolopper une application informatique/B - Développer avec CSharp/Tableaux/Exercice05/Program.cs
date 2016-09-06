using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice05
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime dateNaiss;

            dateNaiss = GetDate("Entrez votre date de naissance : ");

            CompareDate(dateNaiss);


           
        }

        static DateTime GetDate(string phrase)
        {
            DateTime dateNaiss;
            Console.Write(phrase);
            dateNaiss = DateTime.Parse(Console.ReadLine());
            return dateNaiss;
        }

        struct Majorite
        {
            public string majeur;
            public string mineur;
        }
        static void CompareDate(DateTime date)
        {
            DateTime dateJour = DateTime.Today;
            int age;
            Majorite majorite;
            majorite.majeur = "majeur";
            majorite.mineur = "mineur";

            age = dateJour.Year - date.Year;
            if(dateJour.Month < date.Month && dateJour.Day < date.Day)
            {
                age--;
            }

            Console.Write("Vous avez " + age + " ans et êtes ");
            if (age >= 18)
            {
                Console.Write(majorite.majeur);
            }
            else
            {
                Console.Write(majorite.mineur);
            }
            Console.ReadLine();

        }
    }
}
