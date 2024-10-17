# Construire l'image texlive-basic
docker build -t infocornouaille/texlive:basic --target texlive-basic .

# Construire l'image texlive-medium
docker build -t infocornouaille/texlive:medium --target texlive-medium .

# Construire l'image texlive-full
docker build -t infocornouaille/texlive:full --target texlive-full .


docker push infocornouaille/texlive:basic
docker push infocornouaille/texlive:medium
docker push infocornouaille/texlive:full