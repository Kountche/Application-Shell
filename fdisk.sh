ouvrirFichier()
{
./main.sh
}
afficher()
{
yad --title=$1 --width="800" --height="400" --button="Annuler":1\
 --text-info --back=red < redirection.tmp
ouvrirFichier
}

fdisk -l > redirection.tmp
afficher "caracteristiques hardware"

