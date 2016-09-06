using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercice08
{
    class Program
    {
        static void Main(string[] args)
        {
            //Variables
            int[] array = new int[6] { 666, 1, 7, 69, 33, 13 };
            int j = 1, n = array.Length, i, tmp;

            foreach (int rang in array)
            {
                Console.WriteLine(rang);
            }
            Console.WriteLine();
            //Opérations
            while (j != n)
            {
                i = j - 1;
                tmp = array[j];
                while (i > -1 && array[i] > tmp)
                {
                    array[i + 1] = array[i];
                    i--;
                }
                array[i + 1] = tmp;
                j++;
            }
            foreach (int rang in array)
            {
                Console.WriteLine(rang);
            }
            Console.ReadLine();




        }
    }
}
