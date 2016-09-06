using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice04
{
    class Program
    {
        static void Main(string[] args)
        {
            int temp;
            int[] tableau = new int[5] { 2, 3, 5, 1, 4 };
            bool flag;
            Console.WriteLine();
            foreach (int place in tableau)
            {
                Console.WriteLine(place);
            }
            Console.ReadLine();
            do
            {
                flag = false;
                for (int i = 0; i < tableau.Length - 1; i++)
                {
                    if (tableau[i] > tableau[i + 1])
                    {
                        temp = tableau[i];
                        tableau[i] = tableau[i + 1];
                        tableau[i + 1] = temp;
                        flag = true;
                    }
                }
            } while (flag);
            Console.WriteLine();
            foreach (int place in tableau)
            {
                Console.WriteLine(place);
            }
            Console.ReadLine();
        }
    }
}
