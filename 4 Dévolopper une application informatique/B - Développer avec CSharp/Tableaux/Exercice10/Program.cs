using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice10
{
    class Program
    {
        static void Main(string[] args)
        {
            //Version
            Console.WriteLine("Le crible d'Eratosthène V1.0 22/07/2016\n\n\n\n");

            //Variables
            int nombre;
            int[] tableau;
            //Opérations
            nombre = GetInteger("Entrez un nombre : ");

            tableau = Erathostene(nombre);
            Console.WriteLine("Les nombres premiers inférieurs à " + nombre + " sont :");
            for (int k = 0; k < nombre; k++)
            {
                if (tableau[k] != 1)
                {
                    Console.WriteLine((k + 1));
                }
            }
            Console.ReadLine();


        }

        static int GetInteger(string phrase)
        {
            int nombre, test = 1;
            string check = "0123465789", nbEntry;

            Console.Write(phrase);
            do
            {
                nbEntry = Console.ReadLine();
                for (int i = 0; i < nbEntry.Length; i++)
                {
                    test = 0;
                    if (check.IndexOf(nbEntry.Substring(i,1)) == -1)
                    {
                        test++;
                    }
                }
            } while (test != 0);
            
            nombre = Int32.Parse(nbEntry);
            return nombre;
        }

        static int [] Erathostene(int nombre)
        {
            int[] tableau = new int[nombre];
            tableau[0] = 1;
            for (int i = 2; i*i < nombre; i++)
            {
               if (CheckPrime(i) == 1)
               {
                    for (int j = 1; j <= nombre/i; j++)
                    {
                       if (j !=1)
                       {
                            tableau[(j * i)-1] = 1;
                       }
                    }
                }
            }
            return tableau;
            
        }

        static int CheckPrime (int nombre)
        {
            //Variables
            int reste;
            int j = 0;
            
            
            //Opérations
            for (int i = 1; i <= nombre; i++)
            {
                reste = nombre % i;
                if (reste == 0)
                {
                    j++;
                }
            }

            if (j == 2)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
        
    }
}
