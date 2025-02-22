# Utilizando uma imagem base do Ubuntu
FROM ubuntu:latest
 
# Definindo o autor
LABEL maintainer="henrique.marques7@fatec.sp.gov.br"
 
# Atualiza os pacotes e instala dependências para o "ourfiglet"
RUN apt-get update && apt-get install -y \
    figlet \
&& rm -rf /var/lib/apt/lists/*
 
# Comando para rodar quando o contêiner for iniciado
CMD ["figlet", "Hello from Docker!"]
