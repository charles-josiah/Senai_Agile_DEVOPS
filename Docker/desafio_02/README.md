# Desafio 02

## Descrição do desafio: 
Um programador criou uma aplicação em python e precisa que a mesma seja posta em produção até final do dia.

Informações pertinentes para fazer o Dockerfile, Instrucoes_do_dev.txt:

* Expor a aplicação na porta 8087
* A aplicação deverá ser exibir Hello com uma cor de fundo amarela. (yellow).
* A aplicação roda nativamente na porta 9090
* Na minha máquina de desenvolvimento eu tenho o python-pip python-dev build-essential instalado
* Ahhh minha aplicação roda com o framework Flask, mas eu coloquei tudo no requirements.txt
* Você pode usar o pip para instalar.. algo do tipo: pip install -r requirements.txt
* Para rodar a aplicação é só fazer um python color.py
* A aplicação espera 2 variáveis, APP_NAME e APP_COLOR
* Qualquer dúvida, fale com o Pedro, pois estou saindo de férias, pediram pra por em produção hoje mesmo, mesmo com alguns bugs conhecidos.
* Arquivos para fazer o desafio: https://github.com/dvriesman/agile-devops/tree/master/week1/apps/colored

## Link para o container:
https://cloud.docker.com/repository/docker/charlesjosiah/senai_agile_devops-desafio_02

## Para "pull" o container:
````
docker pull charlesjosiah/senai_agile_devops-desafio_02
````

## Sintaxe:
Uso: substitua <APP> pelo nome do app, hello, e <COLOR> por uma cor.
````
docker run -d -p 8087:9090 -e "APP_NAME=<APP>" -e "APP_COLOR=<COLOR>"  charlesjosiah/senai_agile_devops-desafio_02
````
<br>Exemplo:<br>
````
docker run -d -p 8087:9090 -e "APP_NAME=hello" -e "APP_COLOR=yellow"  charlesjosiah/senai_agile_devops-desafio_02
````
