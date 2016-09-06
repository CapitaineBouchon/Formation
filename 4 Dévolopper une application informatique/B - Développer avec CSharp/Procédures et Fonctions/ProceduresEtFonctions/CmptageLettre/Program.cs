using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CmptageLettre
{
    class Program
    {
        static void Main()
        {
            //Comptage de lettre V1.0 07/07/2016
            Console.WriteLine("Comptage de lettre V1.0 07/07/2016");


            //variable
            string phrase, lettre;

            //Entrée données
            Console.WriteLine("Ecrivez une phrase : ");
            phrase = Console.ReadLine();
            Console.WriteLine("Quelle lettre voulez-vous chercher ?");
            lettre = Console.ReadLine();

            //Opération
            CompteLettre(phrase, lettre);
            Console.ReadLine();

        }

        static void CompteLettre(string phrase, string lettre)
        {
            //Variables
            int compt = 0;

            //Opérations
            for (int i = 0; i < phrase.Length; i++)
            {
                if (lettre.IndexOf(phrase.Substring(i,1)) != -1)
                {
                    compt++;
                }
            }

            Console.WriteLine("La lettre " + lettre + " apparait " + compt + " fois.");
        }

    }
}
