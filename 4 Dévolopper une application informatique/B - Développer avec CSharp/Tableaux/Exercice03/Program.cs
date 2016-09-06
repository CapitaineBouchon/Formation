using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice03
{
    class Program
    {
        static void Main(string[] args)
        {
            //Recherche Prénom V1.0 11/07/2016
            Console.WriteLine("Recherche Prénom V1.0 11/07/2016");
            Console.WriteLine();
            //Variables
            string nom;
            string[] tableau;

            //Opérations
            tableau = InitTab();
            Console.Write("Entrez un nom à rechercher : ");
            nom = Console.ReadLine();
            RechercheTab(nom, tableau);
            Console.ReadLine();
            Console.WriteLine("Dernière valeur du tableau : " + tableau[tableau.Length-1]);
            Console.ReadLine();

        }

        static string [] InitTab()
        {
            string[] tableau = new string[20]
                { "Alex", "Bernard", "Conrad", "Dominique","Enrique","Felicia","Gaston","Henry","Isidor","Jonas",
                  "Kevin","Laurent","Manon","Nathan","Orthense","Phillipe","Quentin","Roger","Steven","Ursula"};
            return tableau;
        }

        static void RechercheTab(string nom, string [] tableau)
        {
            int i = 0;
            bool flag = true;
            foreach (string  place in tableau)
            {
                if(place == nom)
                {
                    Console.WriteLine("Le nom " + nom + " a été trouvé et supprimé.");
                    for (int j = i; j < tableau.Length-1; j++)
                    {
                        tableau[j] = tableau[j + 1];
                    }
                    System.Array.Clear(tableau, tableau.Length - 1, 1);
                    flag = false;
                }
                i++;
            }
            if (flag)
            {
                Console.WriteLine("Le nom " + nom + " n'a pas été trouvé.");
            }
        }

        //while ( fin-deb>1 )//pour sortir de la boucle quand le prénom n'existe pas ds le tbl
        //    {
        //        i = (deb + fin) / 2;// milieu du tableau

        //        if (String.Compare(prenom, Tableau[i]) > 0)// si >0 le prenom est plus grand que dans i
        //        {
        //            deb = i;// le début devient i
        //        }
        //        if (String.Compare(prenom, Tableau[i]) < 0)
        //        {
        //            fin = i;// la fin devient i
        //        }
        //        if (String.Compare(prenom, Tableau[i]) == 0)// si ==0 alors le prénom est à la position i
        //        {
        //            fin = i; deb = i;
        //        }
        //    }

        //    if (Tableau[deb] == prenom)
        //    {
        //        Console.WriteLine("Cool");
        //        Console.WriteLine(fin);// ou Console.WriteLine(deb) ou Console.WriteLine(i)
        //    }
        //    else
        //    {
        //        Console.WriteLine("Pas cool");
        //    }
    }
}
