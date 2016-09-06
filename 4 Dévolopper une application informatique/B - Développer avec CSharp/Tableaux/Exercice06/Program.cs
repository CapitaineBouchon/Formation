using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice06
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] tableau;
            double[] resultat = new double[3];

            tableau = InitTab();
            tableau = SaisieTab(tableau);
            resultat = CalculTab(tableau);

            Console.WriteLine("Le maximum est de " + resultat[0] + ".");
            Console.WriteLine("Le minimum est de " + resultat[1] + ".");
            Console.WriteLine("La moyenne est de " + resultat[2] + ".");
            Console.ReadLine();
        }

        static int GetInteger(string phrase)
        {
            int nombre;
            Console.Write(phrase);
            return nombre = Int16.Parse(Console.ReadLine());
        }

        static int[] InitTab()
        {
            int taille;
            do
            {
                taille = GetInteger("Entrez la taille du tableau (50 maximum): ");
                if (taille > 50)
                {
                    Console.WriteLine("Erreur : le nombre entré est trop grand.");

                }
            } while (taille > 50);
            int[] tableau = new int[taille];
            return tableau;
        }

        static int[] SaisieTab(int[] tableau)
        {
            for (int i = 0; i < tableau.Length; i++)
            {
                tableau[i] = GetInteger("Entrez la valeur n°" + (i + 1) + " : ");
            }
            return tableau;
        }

        static double[] CalculTab(int[] tableau)
        {
            double[] calcul = new double[3] { tableau[0] , tableau[0] , 0 };
            
            for (int i = 0; i < tableau.Length; i++)
            {
                if (calcul[0] < tableau[i])
                {
                    calcul[0] = tableau[i];
                }
                if (calcul[1] > tableau[i])
                {
                    calcul[1] = tableau[i];
                }
                calcul[2] += tableau[i];
            }
            calcul[2] = calcul[2] / (double)tableau.Length;
            return calcul;
        }
    }
}
