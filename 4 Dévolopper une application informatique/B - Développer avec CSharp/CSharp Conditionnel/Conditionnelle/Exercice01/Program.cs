using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice01
{
    class Parite
    {
        static void Main()
        {
            //Test parité V1.0 06/07/2016
            Console.WriteLine("Test parité v1.0 06/07/2016");


            //Variables
            string a;
            int a1;

            //Opérations
            Console.WriteLine("Entrez un nombre :");
            a = Console.ReadLine();
            a1 = Convert.ToInt32(a);

            if (a1 % 2 == 0)
            {
                Console.WriteLine("Nombre pair");
                Console.ReadLine();
            }
            else
            {
                Console.WriteLine("Nombre impair");
                Console.ReadLine();
            }
        }
    }
}
