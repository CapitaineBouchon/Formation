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
            //Minimum et Maximum V1.0 07/07/2016
            Console.WriteLine("Minimum et Maximum V1.0 07/07/2016");

            //Variables
            string nbEntry;
            int nb = 1;
            int min = 0;
            int max = 0;


            //Entrée données
            Console.WriteLine("Entrez une suite de nombre (0 arreter) : ");
            while (nb != 0)
            {
                nbEntry = Console.ReadLine();
                nb = Convert.ToInt32(nbEntry);
                if (min == 0 & max == 0)
                {
                    min = nb;
                    max = nb;
                }
                if (nb < min & nb != 0)
                {
                    min = nb;
                }
                if (nb > max)
                {
                    max = nb;
                }
                
                
            }
            Console.WriteLine("Le nombre le plus petit est " + min + " et le nombre le plus grand est le " + max + ".");
            Console.ReadLine();













        }
    }
}
