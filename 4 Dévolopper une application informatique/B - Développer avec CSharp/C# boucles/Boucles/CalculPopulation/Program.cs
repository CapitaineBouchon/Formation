using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculPopulation
{
    class Program
    {
        static void Main()
        {
            //Calcul du nombres de personne suivant l'age V1.0 07/07/2016
            Console.WriteLine("Calcul du nombres de personne suivant l'age V1.0 07/07/2016");

            //Variables
            string ageEntry;
            int age = 0 , inf20 = 0, sup40 = 0, autre = 0, i = 0;

            //Entrée données
            Console.WriteLine("Entrez les ages des personnes : ");
            while (age <= 100)
            {
                ageEntry = Console.ReadLine();
                age = Convert.ToInt32(ageEntry);
                i++;
                if (age < 20)
                {
                    inf20++;
                }
                else if (age > 40)
                {
                    sup40++;
                }
                else if (age >=20 & age <= 40)
                {
                    autre++;
                }
            }

            Console.WriteLine("Il y a " + inf20 + " personnes agées de moins de 20 ans.");
            Console.WriteLine(autre + " persones ont entre 20 et 40 ans.");
            Console.WriteLine(sup40 + " personnes ont plus de 40 ans.");
            Console.ReadLine();










        }
    }
}
