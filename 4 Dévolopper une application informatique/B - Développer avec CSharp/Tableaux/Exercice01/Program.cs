using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice01
{
    class Program
    {
        static void Main(string[] args)
        {
            //Manipulation tableau V1.0 11/07/2016
            Console.WriteLine("Manipulation tableau V1.0 11/07/2016");

            //Variables
            int taille;
            int[] tableau;
            int i = 1;

            //Entrée données
            try
            {
                taille = GetInteger("Entrez la taille du tableau : ");
                tableau = new int[taille];

                foreach (int place in tableau)
                {
                    tableau[i - 1] = GetInteger("Entrez la valeur n°" + i + " : ");
                    i++;
                }
                Console.WriteLine();
                Console.WriteLine("Affichage du tableau :");
                foreach (int place in tableau)
                {
                    Console.WriteLine(place);
                }
            }
            catch (FormatException fe)
            {
                Console.WriteLine("Erreur de saisie \n" + fe.Message);
            }
            catch (IndexOutOfRangeException ioore)
            {
                Console.WriteLine("Index de tableau non valide \n" + ioore.Message);
            }
            catch (Exception e)
            {
                Console.WriteLine("Erreur générale \n" + e.Message);
            }
            finally
            {
                Console.ReadLine();
            }
        }

        static int GetInteger(string entry)
        {           
            int nombre = 0;
            Console.Write(entry);
            nombre = Int16.Parse(Console.ReadLine());
            return nombre;            
        }
    }
}
