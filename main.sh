#! /bin/sh


espace="\t\t\t\t\t\t"
tab="\t\t\t"
retour="\n\n"

rech=$(yad \
--image="/home/freddy/Bureau/projet/logo-esprit.svg"\
--title="projet Scripting" \
--no-buttons \
--center --on-top \
--width="800" --height="200" \
--text=" $retour $espace afficher les caracteristiques hardware:$retour $espace $tab 1- via la commade -lpy $retour $espace $tab 2- via la commande -ldk $retour $espace $tab 3- information sur le disque de systeme de fichier -df $retour $espace $tab 4-afficher les courbes des informations les plus -cb $retour $espace $tab 5-option d'aide -h $retour $espace $tab 6-pour quitter -exit $retour $espace" \
--entry \
--entry-label="votre commande ici" --entry-text="")


if [ x"$rech" = x"-lpy" ]; then
	./pydf.sh
elif [ x"$rech" = x"-h" ]; then
	./help.sh
elif [ x"$rech" = x"-ldk" ]; then
	./fdisk.sh
elif [ x"$rech" = x"-df" ]; then
	./df.sh
elif [ x"$rech" = x"-cb" ]; then
	./courbe.sh
elif [ x"$rech" = x"-exit" ]; then
	exit
else
	./erreur.sh
fi

#echo $rech





