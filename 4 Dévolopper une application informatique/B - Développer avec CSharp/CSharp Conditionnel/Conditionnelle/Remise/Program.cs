using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Remise
{
    class Remise
    {
        static void Main()
        {
            //Calcul Remise V1.0 06/07/2016
            Console.WriteLine("Calcul Remise V1.0 06/07/2016");

            //Variables
            string produit;
            string quantite;

            double PU;
            int QTECOM;
            double TOT;
            double TOTCALC;
            double PAP;
            double PORT = 0;
            double REM = 0;

            //Entré utilisateur
            Console.Write("Entrez le prix du produit : ");
            produit = Console.ReadLine();
            Console.Write("Entrez la quantité commandée : ");
            quantite = Console.ReadLine();

            //Opérations

            PU = Convert.ToDouble(produit);
            QTECOM = Convert.ToInt32(quantite);

            TOT = PU * QTECOM;

            if (TOT < 500)
            {
                PORT = TOT * 0.2;
                if (PORT < 6)
                {
                    PORT = 6;
                }
            }
            
            if (TOT >= 100 & TOT <= 200)
            {
                REM = 5;
            }
            else if (TOT > 200)
            {
                REM = 10;
            }

            TOTCALC = TOT - (TOT * (REM / 100.0));
            PAP = TOTCALC + PORT;

            Console.WriteLine("Le montant total de la commande est de " + PAP + "E. Une remise de " + REM + "% a été appliquée au total.");
            Console.WriteLine("Les frais de ports s'élèvent à " + PORT + "E.");
            Console.ReadLine();



           


        }
    }
}
