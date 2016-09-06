using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice01
{
    class Cercle
    {
        static void Main()
        {
            //**** Périmètre et surface du Cercle (V1.0, 06/07/16) ****
            Console.WriteLine("**** Périmètre et surface du Cercle (V1.0, 06/07/16) ****");

            //Declaration de variables. 
            string saisie; // variable recevant la saisie
            double rayon; // rayon
            double perimetre; // périmètre
            double surface; //surface
            // Etape 1 : lecture du rayon
            Console.WriteLine();
            Console.WriteLine("Entrez la valeur du\n rayon :  ");
            saisie = Console.ReadLine();
            // Etape 2 : calcul et affichage du périmètre
            rayon = Convert.ToDouble(saisie);
            //Calcul du perimetre
            perimetre = 2 * Math.PI * rayon;
            surface = Math.PI * rayon * rayon;
            Console.WriteLine();
            Console.Write("Le cercle de rayon " + rayon);
            Console.Write(" a pour périmetre : " + perimetre);
            Console.WriteLine();
            Console.Write("Et pour surface : " + surface);
            Console.WriteLine();
            // Permet de conserver l'affichage de la console
            Console.ReadLine();
        }
    }
}
