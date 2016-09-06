using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice06
{
    class convertionUnicode
    {
        static void Main()
        {
            //Console convertion Unicode V1.0 06/07/2016
            Console.WriteLine("Convertion Unicode V1.0 06/07/2016");

            //Variable
            string a;
            decimal a1;
            char b;


            //Opérations
            Console.WriteLine("Entrez le nombre Unicode : ");
            a = Console.ReadLine();
            a1 = Convert.ToDecimal(a);

            b = (char)a1; //le char convertis la valeur a1(decimal) en caractère.


            Console.WriteLine(a + " équivaut à " + b + ".");
            Console.ReadLine();



        }
    }
}
