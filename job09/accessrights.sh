#initialiser le chemin vers mon repertoire courant 
path="/home/imran/Documents/shell-exe/job09

#récupérer les colonnes de chaque ligne du fichier avec  la boucle while
      while IPS="," read -r id prenom nom mdp role; do

      #combiner le nom etprenom et mettre les majuscules minuscule
      username=$(echo "$prenom.$nom" | tr '[:upper:]' '[:lower:]'

     #verifiez la longueur du nom d'utilisateur
     if [ ${#usernamee} -lt 3 ]; then
     exit
     fi

     # creer l'utilisateur usernamee
     sudo useradd $usernamee
     echo "$usernamee:$mdp" | sudo chpasswd

    # donner les permissions
    if [ $nrole = "Admin" ]; then
       sudo usermod -aG sudo $usernamee
    else
       sudo usermod -aG users $usernamee
       echo "did $usernamee"
    fi

    #supprimer tous les retour
    nrole=$(echo $role | tr -d '\r' | cat -t)

    #récupérer les lignes de la boucle depuis ..
    done < <(tail -n +2 $path/shell-userlist.csv | tr -d " " && echo " ")
