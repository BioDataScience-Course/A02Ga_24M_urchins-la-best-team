# Graphiques en nuage de points dans R avec `urchin_bio`
# Auteur: Guyliann Engels & Philippe Grosjean
# License: MIT

# Configuration de l'environnement
SciViews::R(lang = "fr")

# Étape 1 : importation des données ---------------------------------------

urchin <- read("urchin_bio", package = "data.io")

# Étape 2 : Graphiques en nuage de points ---------------------------------

# Nuage de points de la hauteur en fonction de la masse des oursins
chart(data = urchin, height ~ weight) +
  geom_point()

# Nuage de points de la hauteur en fonction de la masse des oursins
# en utilisant une transformation `log()` pour les 2 variables.
chart(data = urchin, log(height) ~ log(weight)) +
  geom_point()

# Nuage de points de la hauteur en fonction de la masse des oursins
# en tenant compte de leur origine.
chart(data = urchin, height ~ weight %col=% origin) +
  geom_point()

# Nettoyage de l'environnement.
rm(urchin)
