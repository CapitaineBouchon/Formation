using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice02
{
    class Program
    {
        static void Main(string[] args)
        {
            //Menu tableau V1.0 11/07/2016
            Console.WriteLine("Menu tableau V1.0 11/07/2016");

            //Variables
            int[] tableau;
            int menu;

            //Opérations
            tableau = InitTab();
            tableau = SaisieTab(tableau);
            do
            {
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine("Menu");
                Console.WriteLine("1 - Affichage du contenu du tableau");
                Console.WriteLine("2 - Affichage d'un champ du tableau");
                Console.WriteLine("3 - Affichage du maximum et de la moyenne des valeurs du tableau");
                Console.Write("Entrez le numéro de l'option que vous souhaitez (0 pour quitter) : ");
                menu = GetInteger();
                    switch (menu)
                    {
                        case 1:
                            AfficheTab(tableau);
                            Console.WriteLine();
                            break;
                        case 2:
                            RechercheTab(tableau);
                            Console.WriteLine();
                            break;
                        case 3:
                            InfoTab(tableau);
                            Console.WriteLine();
                            break;
                        case 0:
                            Console.WriteLine("Appuyez sur Entrée pour quitter.");
                            Console.ReadLine();
                            break;
                        default:
                            break;
                    }
             } while (menu != 0);
        }

        static int GetInteger()
        {
            int nombre;
            return nombre = Int16.Parse(Console.ReadLine());
        }

        static int[] InitTab()
        {
            int taille;

            Console.Write("Entrez la taille du tableau : ");
            taille = GetInteger();
            int[] tableau = new int[taille];
            return tableau;
        }

        static int[] SaisieTab(int[] tableau)
        {
            int i = 0;

            foreach  (int place in tableau)
            {
                Console.Write("Entrez la valeur n°" + (i+1) + " : ");
                tableau[i] = GetInteger();
                i++;
            }
            return tableau;
        }

        static void AfficheTab(int[] tableau)
        {
            Console.WriteLine("Affichage du tableau");
            foreach (int place in tableau)
            {
                Console.WriteLine(place);
            }
        }

        static void RechercheTab(int[] tableau)
        {
            int recherche;

            Console.Write("Entrez une valeur comprise entre 1 et " + tableau.Length + " : ");
            do
            {
                recherche = GetInteger();
                if (recherche > tableau.Length)
                {
                    Console.Write("Erreur, entrez une valeur comprise entre 1 et " + tableau.Length + " : ");
                }
            } while (recherche > tableau.Length);

            Console.WriteLine("La case n°" + recherche + " contient la valeur " + tableau[recherche-1]);
        }

        static void InfoTab(int[] tableau)
        {
            int max = 0;
            double avg = 0;
            int i = 0;

            foreach (int place in tableau)
            {
                if (max < tableau[i])
                {
                    max = tableau[i];
                }
                i++;
            }
            i = 0;
            foreach (int place in tableau)
            {
                avg += tableau[i];
                i++;
            }
            avg = (double)avg / tableau.Length;

            Console.WriteLine("La valeur la plus grande est " + max + ".");
            Console.WriteLine("La moyenne des valeurs du tableau est de " + avg + ".");
        }
    }
}
