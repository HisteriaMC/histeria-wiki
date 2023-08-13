%%icon=https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/icons/table.svg%%
# Table de craft API Markdown
Dans ce tutoriel, nous allons voir comment realiser via les balises Markdown customisé differantes tables de craft.  
> :warning: La stylisation de ces balises n'est effective que sur le site d'Histeria dans l'onglet Wiki 

## Syntax  

Les tables de craft stylisé pour le wiki d'Histeria doivent respecter un format spécifique.  
- ``-=-`` Entoure l'ensemble des balises concernant la table de craft
- ``==- https:// lien de l'image ou vide`` présent au nombre de 9, correspond aux cellules de la table pour la recette
- ``-== https:// lien de l'image ou vide`` Correspond a la cellule de resultat de la table de craft

> :warning: Si vous souhaitez laisser une cellule vide, il faut absolument un espace apres la syntax de cellule : ``==-``  

> :warning: Si vous ne souhaitez pas de resultat, il suffit de retirer la synaxe de resultat `-==` de votre table de craft

## Exemples

Table de craft avec resultat et couleurs indiquant quelle ligne correspond à quelles balises de cellules :
```markdown
-=-
 ==- blue
 ==- cyan
 ==- green
 ==- magenta
 ==- orange
 ==- pink
 ==- purple
 ==- red
 ==- white
 -== yellow
-=-
```
-=-
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/blue-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/cyan-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/green-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/magenta-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/orange-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/pink-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/purple-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/red-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/white-rectangle.svg
 -== https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/yellow-rectangle.svg
-=-

---
Table de craft sans resultat et couleurs indiquant quelle ligne correspond à quelles balises de cellules :
```markdown
-=-
 ==- blue
 ==- cyan
 ==- green
 ==- magenta
 ==- orange
 ==- pink
 ==- purple
 ==- red
 ==- white
-=-
```
-=-
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/blue-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/cyan-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/green-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/magenta-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/orange-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/pink-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/purple-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/red-rectangle.svg
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/white-rectangle.svg
-=-

---
Table de craft avec resultat et couleurs indiquant quelle ligne correspond à quelles balises de cellules, ainsi que des cellules sans contenue :
```markdown
-=-
 ==- 
 ==- cyan
 ==- 
 ==- magenta
 ==- 
 ==- pink
 ==- 
 ==- red
 ==-
 -== yellow
-=-
```
-=-
 ==- 
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/cyan-rectangle.svg
 ==- 
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/magenta-rectangle.svg
 ==- 
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/pink-rectangle.svg
 ==- 
 ==- https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/red-rectangle.svg
 ==- 
 -== https://raw.githubusercontent.com/HisteriaMC/histeria-wiki/main/.assets/colors/yellow-rectangle.svg
-=-

