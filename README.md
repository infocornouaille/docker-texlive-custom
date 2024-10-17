# Docker TeX Live Custom

Ce projet fournit des images Docker personnalisées pour TeX Live, offrant différents niveaux d'installation (basic, medium, full) avec une optimisation de l'espace disque.

## Images disponibles

- `infocornouaille/texlive:basic` - Installation de base de TeX Live
- `infocornouaille/texlive:medium` - Installation moyenne de TeX Live avec des packages supplémentaires
- `infocornouaille/texlive:full` - Installation complète de TeX Live

Toutes les images sont basées sur Ubuntu et optimisées pour réduire leur taille en supprimant la documentation.

## Utilisation

Pour utiliser ces images, vous pouvez les tirer directement de Docker Hub :

```bash
docker pull infocornouaille/texlive:basic
docker pull infocornouaille/texlive:medium
docker pull infocornouaille/texlive:full
```

Exemple d'utilisation :

```bash
docker run --rm -v $(pwd):/data infocornouaille/texlive:medium pdflatex main.tex
```

## Construction locale

Si vous souhaitez construire les images localement :

1. Clonez ce dépôt :
   ```bash
   git clone https://github.com/infocornouaille/docker-texlive-custom.git
   cd docker-texlive-custom
   ```

2. Construisez les images :
   ```bash
   docker build -t infocornouaille/texlive:basic --target texlive-basic .
   docker build -t infocornouaille/texlive:medium --target texlive-medium .
   docker build -t infocornouaille/texlive:full --target texlive-full .
   ```

## Personnalisation

Vous pouvez personnaliser les images en modifiant le Dockerfile. Chaque étage (`basic`, `medium`, `full`) peut être ajusté selon vos besoins spécifiques.

## Contribution

Les contributions à ce projet sont les bienvenues. N'hésitez pas à ouvrir une issue ou à soumettre une pull request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE.md) pour plus de détails.