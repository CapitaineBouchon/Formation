using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Multiples
{
    class Program
    {
        static void Main()
        {
            //Multiple V1.0 07/07/2016
            Console.WriteLine("Multiple V1.0 07/07/2016");


            //Variables
            string multiple;
            string nombre;
            int mult;
            int nb;
            int produit;


            //Entrée données
            Console.Write("Entrez un nombre : ");
            nombre = Console.ReadLine();
            Console.Write("Entrez le nombre de multiple que vous voulez trouver :");
            multiple = Console.ReadLine();

            mult = Convert.ToInt32(multiple);
            nb = Convert.ToInt32(nombre);

            //Opérations

            for (int i = 0; i < mult; i++)
            {
                produit = i * nb;
                Console.WriteLine(i + " * " + nb + " = " + produit);
            }
            Console.ReadLine();


        }
    }
}
