using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculette
{
    class Program
    {
        static void Main()
        {
            //Calculette v1.0 06/07/2016
            Console.WriteLine("Calculatrice V1.0 06/07/2016");


            //Variables
            string nbUn;
            string nbDeux;
            string operateur;
            int nb1;
            int nb2;
            double total;

            //Entré utilisateur
            Console.Write("Entrez le premier nombre : ");
            nbUn = Console.ReadLine();
            Console.Write("Entre l'opérateur (+, -, * ou /) : ");
            operateur = Console.ReadLine();
            Console.Write("Entrez le deuxième nombre : ");
            nbDeux = Console.ReadLine();

            //Opérations
            nb1 = Convert.ToInt32(nbUn);
            nb2 = Convert.ToInt32(nbDeux);
            #region
            switch (operateur)
            {
                case "+":
                    total = nb1 + nb2;
                    Console.WriteLine("Résultat " + nbUn + " " + operateur + " " + nbDeux + " = " + total + ".");
                    Console.ReadLine();
                    break;
                case "-":
                    total = nb1 - nb2;
                    Console.WriteLine("Résultat " + nbUn + " " + operateur + " " + nbDeux + " = " + total + ".");
                    Console.ReadLine();
                    break;
                case "*":
                    total = nb1 * nb2;
                    Console.WriteLine("Résultat " + nbUn + " " + operateur + " " + nbDeux + " = " + total + ".");
                    Console.ReadLine();
                    break;
                case "/":
                    if (nb2 == 0)
                    {
                        Console.WriteLine("Erreur : impossible de diviser par 0 !");
                        Console.ReadLine();
                    }
                    else
                    {
                        total = (double)nb1 / nb2;
                        Console.WriteLine("Résultat " + nbUn + " " + operateur + " " + nbDeux + " = " + total + ".");
                        Console.ReadLine();
                    }
                    break;
                default:
                    Console.WriteLine("L'opérateur n'est pas valide, l'opération a échoué.");
                    Console.ReadLine();
                    break;
            }
            #endregion
            
        }
    }
}

