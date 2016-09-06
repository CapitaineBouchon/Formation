using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Moyenne
{
    class Program
    {
        static void Main()
        {
            //Moyenne V1.0 07/07/2016
            Console.WriteLine("Moyenne V1.0 07/07/2016");

            //Variables
            string nbEntry;
            int nb = 1;
            int i = 0;
            int sum = 0;
            double avg;


            //Entrée données
            Console.WriteLine("Entrez une suite de nombre pour la moyenne (0 pour passer au calcul) : ");
            while (nb != 0)
            { 
                nbEntry = Console.ReadLine();
                nb = Convert.ToInt32(nbEntry);
                sum = sum + nb;
                i++;
            }
            avg = (double)sum / i;
            Console.WriteLine("La moyenne des nombres entrés est de " + avg + ".");
            Console.WriteLine("La somme des nombres entrés est de " + sum + ".");
            Console.ReadLine();













        }
    }
}
