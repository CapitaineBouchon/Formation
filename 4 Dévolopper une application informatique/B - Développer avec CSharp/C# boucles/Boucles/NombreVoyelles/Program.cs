using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NombreVoyelles
{
    class Program
    {
        static void Main()
        {
            //Nombre de voyelles V1.0 07/07/2016
            Console.WriteLine("Nombre de voyelles V1.0 07/07/2016");

            //Variables
            string entry;
            string voyelles = "aeiouyAEIOUY";
            int l;
            int nbVoyelles = 0;

            //Entrée données
            Console.WriteLine("Entrez un texte :");
            entry = Console.ReadLine();
            l = entry.Length;

            for (int i = 0; i < l; i++)
            {
                if (voyelles.IndexOf(entry.Substring(i,1)) != -1)
                {
                    nbVoyelles++;
                }
            }

            Console.WriteLine("Il y a " + nbVoyelles + " voyelles dans le texte.");
            Console.ReadLine();




        }
    }
}
