using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice04
{
    class Moyenne
    {
        static void Main()
        {
            //Calcul de moyenne V1.0 06/07/2016
            Console.WriteLine("Calcul de moyenne V1.0 06/07/2016 \n");

            //Variables
            string a;
            string b;
            string c;
            double a1;
            double b1;
            double c1;
            double moy;

            //Calcul
            Console.WriteLine("Entrez la note du devoir surveillé : ");
            a = Console.ReadLine();
            a1 = Convert.ToDouble(a);
            Console.WriteLine("Entrez la note d'interrogation écrite : ");
            b = Console.ReadLine();
            b1 = Convert.ToDouble(b);
            Console.WriteLine("Entrez la note de travaux pratique : ");
            c = Console.ReadLine();
            c1 = Convert.ToDouble(c);

            moy = (a1 * 3 + b1 * 2 + c1) / 6;

            Console.WriteLine("La moyenne de cet élève est de " + moy + ".");
            Console.ReadLine();
            
        }
    }
}
