using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Version
            Console.WriteLine("Calcul des heures V1.0 12/07/2016\n\n\n");

            //Variables
            string tempsUn, tempsDeux;

            //Opérations
            Console.Write("Entrez un temps au format HH:MM:SS : ");
            tempsUn = testTemps();
            Console.Write("Entrez un autre temps au format HH:MM:SS : ");
            tempsDeux = testTemps();
            Console.WriteLine("\n\n");

            Calcul(tempsUn, tempsDeux);

            Console.Write("Appuyez sur Entrée pour quitter...");
            Console.ReadLine();
        }

        static void Calcul(string tempsUn, string tempsDeux)
        {
            //Variables
            int secondesA, minutesA, heuresA;
            int secondesB, minutesB, heuresB;
            int secondesT, minutesT, heuresT;
            //int temp;


            //Opérations
            secondesA = Int32.Parse(strtok(tempsUn, 3));
            minutesA = Int32.Parse(strtok(tempsUn, 2));
            heuresA = Int32.Parse(strtok(tempsUn, 1));

            secondesB = Int32.Parse(strtok(tempsDeux, 3));
            minutesB = Int32.Parse(strtok(tempsDeux, 2));
            heuresB = Int32.Parse(strtok(tempsDeux, 1));

            //if (secondesB > secondesA)
            //{
            //    temp = secondesB;
            //    secondesB = secondesA;
            //    secondesA = temp;
            //}
            //if (minutesB > minutesA)            <== Utile en cas de soustraction, mais pas ici du coup.
            //{
            //    temp = minutesB;
            //    minutesB = minutesA;
            //    minutesA = temp;
            //}
            //if (heuresB > heuresA)
            //{
            //    temp = heuresB;
            //    heuresB = heuresA;
            //    heuresA = temp;
            //}

            secondesT = secondesA + secondesB;
            minutesT = minutesA + minutesB;
            heuresT = heuresA + heuresB;
            do
            {
                if (secondesT >= 60)
                {
                    secondesT -= 60;
                    minutesT++;
                }
                if (minutesT >= 60)
                {
                    minutesT -= 60;
                    heuresT++;
                }
            } while (minutesT >= 60 | secondesT >= 60);

            Console.WriteLine("Le temps total est de " + heuresT + ":" + minutesT + ":" + secondesT);

        }


        static string strtok(string temps, int nb)
        {
            //Variables 
            int nbString = 1;
            string resultat = "";

            //Opérations
            for (int i = 0; i < temps.Length; i++)
            {
                if (":" == temps.Substring(i, 1))
                {
                    nbString++;
                }
                else
                {
                    if (nbString == nb)
                    {
                        resultat += temps.Substring(i, 1);
                    }
                }
            }
            return resultat;
        }

        static string testTemps()
        {
            string test = "0123456789:";
            string separateur = ":";
            string entry = "";
            int doublepoint = 0;
            bool flag = true;

            do
            {
                entry = Console.ReadLine();
                for (int i = 0; i < entry.Length; i++)
                {
                    if (test.IndexOf(entry.Substring(i, 1)) == -1)
                    {
                        flag = true;
                        break;
                    }
                    else
                    {
                        flag = false;
                    }

                    if (separateur == entry.Substring(i, 1))
                    {
                        doublepoint++;
                    }
                }
                if (doublepoint == 2)
                {
                    flag = false;
                }
                else
                {
                    flag = true;
                }
                if (flag == true)
                {
                    Console.Write("Erreur de saisie, veuillez entrer un temps au format HH:MM:SS : ");
                }

            } while (flag);

            return entry;
        }
    }

}

