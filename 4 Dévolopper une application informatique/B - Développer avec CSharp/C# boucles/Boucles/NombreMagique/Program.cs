using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NombreMagique
{
    class Program
    {
        static void Main()
        {
            //Nombre magique v1.0 07/07/2016
            Console.WriteLine("Nombre magique V1.0 07/07/2016");


            //Variables
            string nombre;
            int nb = 0;
            Random rand = new Random();
            int nbRand = 0;


            //Entrée données
            Console.WriteLine("Devinez quel nombre a été choisi.");
            nbRand = rand.Next(1, 100);

            while (nb != nbRand)
            {
                nombre = Console.ReadLine();
                nb = Convert.ToInt32(nombre);
                if (nb > nbRand)
                {
                    Console.WriteLine("C'est moins.");
                }
                else if (nb < nbRand)
                {
                    Console.WriteLine("C'est plus.");
                }
                else
                {
                    Console.WriteLine("Bravo !");
                    Console.ReadLine();
                }
            }










        }
    }
}
