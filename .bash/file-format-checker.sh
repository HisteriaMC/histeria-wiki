#!/bin/bash

# Définir le répertoire de départ
testPassed=true
exclude_list=(
  "LICENSE"
  "README"
  ".github"
  ".bash"
)

set -e
set -o pipefail

# Fonction pour vérifier si une chaîne de caractères est en "kebab case"
function is_kebab_case {
  if echo "$1" | grep -Eq "^[a-z0-9'éèà]+(-[a-z0-9'éèà]+)*$"; then
    #echo "$1 Success !"
    return 0 # true
  else
    testPassed="$false"
    return 1 # false
  fi
}

# Fonction récursive pour parcourir tous les fichiers et dossiers
function traverse {
  for file in "$1"/*; do
    if [[ -d "$file" ]]; then # si le fichier est un répertoire

      if [[ "${exclude_list[*]}" =~ $(basename "$file") ]]; then
        continue
      fi

      filename=$(basename "$file")

      if ! is_kebab_case "$filename"; then
        echo "$filename don't respect normalization" # afficher un message d'erreur
      fi

      traverse "$file"             # appel récursif de la fonction pour le répertoire
    else                           # si le fichier est un fichier ordinaire

      subPath=$(basename "$file") # extraire le nom du fichier sans le chemin complet
      filename="${subPath%.*}"

      if [[ "${exclude_list[*]}" =~ $filename ]]; then
        continue
      fi

      if ! is_kebab_case "$filename"; then         # vérifier si le nom du fichier est en "kebab case"
        echo "$subPath don't respect normalization" # afficher un message d'erreur
      fi
    fi
  done
}

# Appel de la fonction pour parcourir tous les fichiers et dossiers
traverse ".."
traverse "../.assets"
if [ $testPassed ]; then
  echo "Test passed with success !"
  exit 0
else
  echo "Test failed"
  exit 125
fi
