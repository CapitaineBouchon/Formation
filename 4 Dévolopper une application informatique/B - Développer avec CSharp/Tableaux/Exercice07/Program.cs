using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice07
{
    class Program
    {
        static void Main(string[] args)
        {
            //Version
            Console.WriteLine("Convertion Décimal/Binaire et Binaire/Décimal V1.0 12/07/2016\n\n\n");

            //variables
            int nombre, reponse;
            string resultat, binaire;
            double decim;

            //Opérations
            do
            {
                Console.WriteLine("1 - Convertir un nombre binaire en décimal.");
                Console.WriteLine("2 - Convertir un nombre décimal en binaire.");
                Console.WriteLine("0 - Quittez le programme");
                reponse = GetInteger("Entrez votre choix : ");
                switch (reponse)
                {
                    case 1:
                        Console.Clear();
                        binaire = GetBinary();
                        decim = ConvertToDecimal(binaire);
                        Console.WriteLine("Le nombre " + binaire + " vaut en decimal : " + decim + ".");
                        Console.ReadLine();
                        Console.Clear();
                        break;
                    case 2:
                        Console.Clear();
                        nombre = GetInteger("Entrez un nombre à convertir en binaire : ");
                        resultat = ConvertToBinary(nombre);
                        Console.WriteLine("Le nombre " + nombre + " vaut en binaire : " + resultat + ".");
                        Console.ReadLine();
                        Console.Clear();
                        break;
                    case 0:
                        Console.WriteLine("Appuyez sur Entrée pour quitter.");
                        Console.ReadLine();
                        break;
                    default:
                        Console.WriteLine("Erreur, numéro d'option incorrecte.");
                        Console.ReadLine();
                        Console.Clear();
                        break;
                }
            } while (reponse != 0);
            
        }

        static int GetInteger(string phrase)
        {
            int nombre;
            Console.Write(phrase);
            return nombre = Int16.Parse(Console.ReadLine());
        }

        static double ConvertToDecimal(string nombre)
        {
            double resultat = 0;
            double[] base10 = new double[nombre.Length];
            string[] binaire = new string[nombre.Length];
            int j = nombre.Length - 1;

            for (int i = 0; i < nombre.Length; i++)
            {                
                binaire[i] = nombre.Substring(i, 1);
                base10[i] = BaseBinaire(i);                              
            }
            for (int i = 0; i < nombre.Length; i++)
            {
                if (binaire[i] == "1")
                {
                    resultat += base10[j];
                }
                j--;
            }
            return resultat;
        }

        static string GetBinary()
        {
            bool flag;
            string testBin = "23456789", nombre;
            do 
            {
                flag = false;
                Console.WriteLine("Entrez un nombre binaire");
                nombre = Console.ReadLine();
                for (int i = 0; i < nombre.Length; i++)
                {
                    if (testBin.IndexOf(nombre.Substring(i, 1)) != -1)
                    {
                        flag = true;
                    }
                }
                if (flag == true)
                {
                    Console.WriteLine("Erreur de saisie du nombre binaire.\n");
                }
            } while (flag == true);
            return nombre;
        }

        static int GetInterger(string phrase)
        {
            int nombre;

            Console.WriteLine(phrase);
            nombre = Int16.Parse(Console.ReadLine());
            return nombre;
        }

        static double BaseBinaire(int poste)
        {
            double[] BaseBinaire = new double[60];
            for (int i = 0; i < 30; i++)
            {
                BaseBinaire[i] = Math.Pow(2.0, (double)i);
            }
            return BaseBinaire[poste];         
        }

        static string ConvertToBinary(int nombre)
        {
            string binaire = "";
            int puissance = 0;


            for (int i = 0; (nombre - BaseBinaire(i)) >= 0; i++)
            {
                puissance = i;
            }
            while (puissance >= 0)
            {
                if ((nombre -BaseBinaire(puissance)) >= 0 )
                {
                    binaire += "1";
                    nombre = nombre - (Int32)BaseBinaire(puissance);
                }
                else
                {
                    binaire += "0";
                }
                puissance--;
            }
            return binaire;
        }
    }
}
