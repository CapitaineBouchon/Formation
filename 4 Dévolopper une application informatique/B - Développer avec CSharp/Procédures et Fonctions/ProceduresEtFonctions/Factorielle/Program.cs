using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Factorielle
{
    class Program
    {
        static void Main()
        {
            //Factorielle V1.0 08/07/2016
            Console.WriteLine("Factorielle V1.0 08/07/2016");

            //Variables
            int nb;
            //Entrée données
            Console.Write("Entrez un nombre pour en sortir la factorielle : ");
            nb = GetInteger();
            Console.WriteLine("La factorielle de " + nb + " est de " + Factorielle(nb) + ".");
            Console.ReadLine();
        }

        static double Factorielle(int nb)
        {
            /* //Variable
             double total = 1;

             //Opérations
             for (int i = 1; i <= nb; i++)
             {
                 total = total * i;

             }
             if (total == 0)
             {
                 total = 1;
             }
             return total;*/

            if (nb == 0)
            {
                return 1;
            }
            else
            {
                return nb * Factorielle(nb - 1);
            }


        }

        static int GetInteger()
        {
            //Variables
            int nb;
            string nombre;
            //Opérations
            nombre = Console.ReadLine();
            return nb = Convert.ToInt32(nombre);
        }
    }
}
