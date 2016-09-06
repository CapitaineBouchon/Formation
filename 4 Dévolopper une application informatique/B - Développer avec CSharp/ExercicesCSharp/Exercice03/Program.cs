using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice03
{
    class Convertisseur_temperature
    {
        static void Main()
        {
            //Convertisseur de température V1.0 06/07/2016
            Console.WriteLine("Convertisseur de température V1.0 06/07/2016");

            //Variables
            string a;
            double c;
            double f;

            //Calcul
            Console.WriteLine("Entrez la température en degré Fahrenheit : ");
            a = Console.ReadLine();
            f = Convert.ToDouble(a);
            c = ((double)5 / 9) * (f - 32);
            Console.WriteLine(a + "°F équivaut à " + c + "°C.");
            Console.ReadLine();

        }
    }
}
