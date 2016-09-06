using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice05
{
    class Convertion
    {
        static void Main()
        {
            //Convertion des secondes en heurs, minutes, secondes V1.0 06/07/2016
            Console.WriteLine("Outils de convertions des secondes V1.0 06/07/2016");

            //Variables
            string a;
            int a1;
            int h;
            int m;
            int s;

            //Calcul
            Console.WriteLine("Entrez le nombre de secondes à convertir : ");
            a = Console.ReadLine();
            a1 = Convert.ToInt32(a);

            h = a1 / 3600;
            a1 = a1 % 3600;
            m = a1 / 60;
            s = a1 % 60;

            Console.WriteLine(a + " secondes vaut " + h + "h " + m + "m " + s + "s.");
            Console.ReadLine();

        }
    }
}
