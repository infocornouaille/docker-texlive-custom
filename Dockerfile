# Étape 1: TeX Live Basic
FROM ubuntu:latest AS texlive-basic
RUN apt-get update && apt-get install -y \
    texlive-base \
    && rm -rf /var/lib/apt/lists/* \
    && find /usr/share/texlive -type d -name "doc" -exec rm -rf {} + \
    && find /usr/share/texmf -type d -name "doc" -exec rm -rf {} +

# Étape 2: TeX Live Medium
FROM texlive-basic AS texlive-medium
RUN apt-get update && apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    && rm -rf /var/lib/apt/lists/* \
    && find /usr/share/texlive -type d -name "doc" -exec rm -rf {} + \
    && find /usr/share/texmf -type d -name "doc" -exec rm -rf {} +

# Étape 3: TeX Live Full
FROM texlive-medium AS texlive-full
RUN apt-get update && apt-get install -y \
    texlive-full \
    && rm -rf /var/lib/apt/lists/* \
    && find /usr/share/texlive -type d -name "doc" -exec rm -rf {} + \
    && find /usr/share/texmf -type d -name "doc" -exec rm -rf {} +



WORKDIR /data
