using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Participation
{
    class Program
    {
        static void Main()
        {
            //Participation repas V1.1 07/07/2016
            Console.WriteLine("Participation repas V1.1 07/07/2016");

            //Variables
            string statutEntry;
            string nbEnfantEntry;
            string salaireEntry;
            int nbEnfant = 0;
            int salaire = 0;
            int participation = 0;
            bool erreur;

            //Entré utilisateur
            Console.Write("Entrez le montant du salaire : ");
            salaireEntry = Console.ReadLine();
            Console.Write("Etes-vous marié ? (oui / non)");
            statutEntry = Console.ReadLine();
            Console.Write("Combien avez-vous d'enfant ?");
            nbEnfantEntry = Console.ReadLine();

            //Opérations
            nbEnfant = Convert.ToInt32(nbEnfantEntry);
            salaire = Convert.ToInt32(salaireEntry);
            erreur = false;
            switch (statutEntry)
            {
                case "oui":
                    participation = 25;
                    break;
                case "non":
                    participation = 20;
                    break;
                default:
                    Console.WriteLine("Erreur de saisie, un oui ou un non était attendu.");
                    erreur = true;
                    break;
            }
            if (erreur == false)
            {
                participation = participation + (nbEnfant * 10);
                if (salaire < 1200)
                {
                    participation = participation + 10;
                }
                if (participation > 50)
                {
                    participation = 50;
                }

                Console.WriteLine("La participation au repas se fera à hauteur de " + participation + "%.");
                Console.ReadLine();
            }
            else
            {
                Console.ReadLine();
            }









        }
    }
}
