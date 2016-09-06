using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntiersInferieurs
{
    class Program
    {
        static void Main()
        {
            //Les entiers inférieurs à N V1.0 07/07/2016
            Console.WriteLine("Les entiers inférieurs à N V1.0 07/07/2016");

            //Variables
            string entry;
            int n;


            //Entrée utilisateur
            Console.Write("Entrez un nombre : ");
            entry = Console.ReadLine();
            n = Convert.ToInt32(entry);

            //Opérations
            Console.WriteLine("Les entiers inférieurs à " + n + " sont :");
            while (n != 0)
            {
                n--;
                Console.WriteLine(n);
            }
            Console.ReadLine();















        }
    }
}
