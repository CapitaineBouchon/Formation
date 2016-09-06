using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringToken
{
    class Program
    {
        static void Main()
        {
            //String Token v1.0 08/07/2016
            Console.WriteLine("String Token v1.0 08/07/2016");
            Console.WriteLine();

            //Variables
            string str1, str2, result;
            int nb;

            Console.WriteLine("Entrez une suite de mot séparée par un caractère :");
            str1 = Console.ReadLine();
            Console.WriteLine("Entrez le séparateur :");
            str2 = Console.ReadLine();
            Console.Write("Entrez un nombre pour sortir le mot corespondant :");
            nb = GetInteger();
            result = strtok(str1, str2, nb);
            Console.WriteLine("Le mot en " + nb + "eme position est " + result + ".");
            Console.ReadLine();
        }

        static string strtok(string str1, string str2, int nb)
        {
            //Variables 

            int nbString = 1;
            string resultat = "";


            for (int i = 1; i < str1.Length; i++)
            {
                if (str2 ==  str1.Substring(i, 1))
                {
                    nbString++;
                }
                else
                {
                    if (nbString == nb)
                    {
                        resultat += str1.Substring(i, 1);
                    }
                }
            }
            return resultat;
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
    }
}