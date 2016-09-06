using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Menu
{
    class Program
    {
        static void Main()
        {
            //Variables
            int choix = 0;
            bool flag = true;

            Console.WriteLine("1 - Multiples");
            Console.WriteLine("2 - Somme et moyenne");
            Console.WriteLine("3 - Recherche du nombre de voyelles");
            Console.WriteLine("4 - Recherche du nombre des caracteres suivants");
            Console.WriteLine("0 - Sortir");
            while (flag)
            {
                Console.WriteLine("Entrez votre option");
                choix = GetInteger();
                switch (choix)
                {
                    case 1:
                        Multiple();
                        break;
                    case 2:
                        SommeMoyenne();
                        break;
                    case 3:
                        NombreVoyelle();
                        break;
                    case 4:
                        NombreCaractere();
                        break;
                    case 0:
                        flag = false;
                        break;
                    default:
                        Console.WriteLine("Erreur : option invalide. Recommencez.");
                        break;
                }
               
                
            }

            Console.WriteLine("Merci d'avoir testé !");
            Console.ReadLine();



        }

        static int GetInteger()
        {
            //Variables
            int nb;
            string nombre;
            //Opérations
            nombre = Console.ReadLine();
            return nb = Convert.ToInt32(nombre);
        }

        static string GetString()
        {
            string phrase;
            return phrase = Console.ReadLine();
        }

        static void Multiple()
        {
            //Variables
            int produit, nb, mult;

            //Entrée données
            Console.Write("Entrez un nombre : ");
            nb = GetInteger();
            Console.Write("Entrez le nombre de multiple que vous voulez trouver :");
            mult = GetInteger();

            //Opérations

            for (int i = 0; i < mult; i++)
            {
                produit = i * nb;
                Console.WriteLine(i + " * " + nb + " = " + produit);
            }
            Console.ReadLine();


        }

        static void SommeMoyenne()
        {
            //variables
            int nb = 1;
            int i = 0;
            int sum = 0;
            double avg;


            //Entrée données
            Console.WriteLine("Entrez une suite de nombre pour la moyenne (0 pour passer au calcul) : ");
            while (nb != 0)
            {

                nb = GetInteger();
                sum = sum + nb;
                i++;
            }
            avg = (double)sum / i;
            Console.WriteLine("La moyenne des nombres entrés est de " + avg + ".");
            Console.WriteLine("La somme des nombres entrés est de " + sum + ".");
            Console.ReadLine();
        }

        static void NombreVoyelle()
        {
            //Variables
            string entry;
            string voyelles = "aeiouyAEIOUY";
            int l;
            int nbVoyelles = 0;

            //Entrée données
            Console.WriteLine("Entrez un texte :");
            entry = GetString();
            l = entry.Length;

            for (int i = 0; i < l; i++)
            {
                if (voyelles.IndexOf(entry.Substring(i, 1)) != -1)
                {
                    nbVoyelles++;
                }
            }

            Console.WriteLine("Il y a " + nbVoyelles + " voyelles dans le texte.");
            Console.ReadLine();
        }

        static void NombreCaractere()
        {
            //Variables
            string entry;
            string caractere;
            int eL, cL;
            int nbOccurence = 0;
            int i = 0;

            //Entrée données
            Console.WriteLine("Entrez un texte :");
            entry = GetString();
            Console.WriteLine("Entrez les caractères à rechercher :");
            caractere = GetString();
            eL = entry.Length;
            cL = caractere.Length;


            while ( i < eL-3)
            {
                if (caractere.IndexOf(entry.Substring(i, cL)) != -1)
                {
                    nbOccurence++;
                    i = i + cL-1;
                }
                i++;
            }

            Console.WriteLine("Il y a " + nbOccurence + " fois '" + caractere +  "' dans le texte.");
            Console.ReadLine();
        }
    }
}
