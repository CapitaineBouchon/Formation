using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NombrePremier
{
    class Program
    {
        static void Main()
        {
            //Nombre premier V1.0 07/07/2016
            Console.WriteLine("Nombre premier V1.0 07/07/2016");


            //Variables
            string nombre;
            int nb;
            int reste;
            int j = 0;





            //Entrée données
            Console.Write("Entrez un nombre : ");
            nombre = Console.ReadLine();
            nb = Convert.ToInt32(nombre);
            for (int i = 1; i <= nb; i++)
            {
                reste = nb % i;
                if (reste == 0)
                {
                    j++;
                }
            }

            if (j == 2)
            {
                Console.WriteLine("Le nombre " + nombre + " est un nombre premier.");
                Console.ReadLine();
            }
            else
            {
                Console.WriteLine("Le nombre " + nombre + " n'est pas un nombre premier.");
                Console.ReadLine();
            }
            

        }
    }
}
