using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice02
{
    class calculatrice
    {
        static void Main()
        {
            //Calculatrice (V1.01 06/07/16)
            Console.WriteLine("Calculatrice (V1.0 06/07/16)");

            //Variables
            string a;
            string b;
            int c;
            int d;
            double e;

            //Entrée des valeurs
            Console.WriteLine("Entrez une première valeur : ");
            a = Console.ReadLine();
            Console.WriteLine("Entrez une deuxième valeur : ");
            b = Console.ReadLine();

            //Calcul
            c = Convert.ToInt32(a);
            d = Convert.ToInt32(b);
            e = (double)c / d;
            Console.WriteLine("Le quotient de " + a + " et " + b + " est de " +  e);
            Console.ReadLine();
        
        }
    }
}
