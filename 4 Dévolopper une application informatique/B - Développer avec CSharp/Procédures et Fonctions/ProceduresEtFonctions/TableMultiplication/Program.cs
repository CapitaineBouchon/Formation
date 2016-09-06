using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TableMultiplication
{
    class Program
    {
        static void Main()
        {
            //Programme multiplication V1.0 07/07/2016
            Console.WriteLine("Programme multiplication V1.0 07/07/2016");

            //Variables
            string entry;
            int nb;

            //Entrée Données
            Console.Write("Quelle table de multiplication voulez-vous afficher ? ");
            entry = Console.ReadLine();
            nb = Convert.ToInt32(entry);

            //Opération
            TableMultiplication(nb);
            Console.ReadLine();

        }

        static void TableMultiplication (int nb)
        {
            //variables
            int prod;

            //Opérations
            Console.WriteLine("Table de " + nb + " :");
            for (int i = 0; i < 11; i++)
            {
                prod = i * nb;
                Console.WriteLine(i + " x " + nb + " = " + prod);
            }

        }
    }
}
