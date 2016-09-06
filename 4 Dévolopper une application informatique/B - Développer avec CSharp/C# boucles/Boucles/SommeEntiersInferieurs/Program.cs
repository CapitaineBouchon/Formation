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
            //La somme des entiers inférieurs à N V1.0 07/07/2016
            Console.WriteLine("La somme des entiers inférieurs à N V1.0 07/07/2016");

            //Variables
            string entry;
            int n;
            int sum;


            //Entrée utilisateur
            Console.Write("Entrez un nombre : ");
            entry = Console.ReadLine();
            n = Convert.ToInt32(entry);

            //Opérations
            sum = 0;
            while (n != 0)
            {
                sum = n + sum;
                n--;
            }
            Console.WriteLine("La somme des entiers inférieurs à " + entry + " est de " + sum + ".");
            Console.ReadLine();















        }
    }
}
