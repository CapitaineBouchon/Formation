using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Age
{
    class Program
    {
        static void Main()
        {
            //Calcul age V1.0 06/07/2016
            Console.WriteLine("Calcul age V1.0 06/07/2016"+"\n");

            
            //Variables
            string entry;
            DateTime date;
            DateTime now;
            int age;



            //Entrée des données
        
            Console.WriteLine("Insérez votre date de naissance (jj/mm/aaaa):");
            entry = Console.ReadLine();

            //Opérations
            date = Convert.ToDateTime(entry);
            now = DateTime.Today;
            age = now.Year - date.Year;
            if (now.Month < date.Month && now.Day < date.Day)
            {
                age = age - 1;
            }


            //Rendu
            Console.Write("Vous avez " + age + " ans et êtes ");
            if (age >= 18)
            {
                Console.Write("majeur.");
            }
            else
            {
                Console.Write("mineur.");
            }
            Console.ReadLine();

        }
    }
}
