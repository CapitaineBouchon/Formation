using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SommeIntervalle
{
    class Program
    {
        static void Main()
        {
            //Somme d'un intervalle V1.0 07/07/2016
            Console.WriteLine("Somme d'un intervalle V1.0 07/07/2016");

            //Variables
            string nbUn;
            string nbDeux;
            int nb1;
            int nb2;
            int sum;


            //Entrée données
            Console.Write("Entrez le premier nombre : ");
            nbUn = Console.ReadLine();
            Console.Write("Entrez le deuxième nombre : ");
            nbDeux = Console.ReadLine();

            nb1 = Convert.ToInt32(nbUn);
            nb2 = Convert.ToInt32(nbDeux);
            sum = 0;

            //Opérations
            if (nb1 < nb2)
            {
                while (nb1 != nb2 + 1)
                {
                    sum = nb1 + sum;
                    nb1++;
                }
            }
            else if (nb1 > nb2)
            {
                while (nb1 + 1 != nb2)
                {
                    sum = nb2 + sum;
                    nb2++;
                }
            }
            else
            {
                sum = nb1;
            }

            Console.WriteLine("La somme des entiers de " + nbUn + " à " + nbDeux + " est égale à " + sum + ".");
            Console.ReadLine();











        }
    }
}
