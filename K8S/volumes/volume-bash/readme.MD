Aplicacao exemplo para gerar um volume compartilhado.
Sobe aplicacao para enviar e receber aruqivos.

Exemplo:
  
  # PARA ENVIAR ARQUIVO

  curl -XPOST -u "demo:demo" http://localhost:8091/upload --data-binary @/home/user/myfile.pdf

  # PARA BAIXAR ARQUIVO

  curl -XGET -u "demo:demo" -o file.pdf http://localhost:8091/download?id=123


Disponivel: https://github.com/dvriesman/agile-devops/tree/master/week3/apps/volume2 
