## Subir um servico de wordpress usando K8S

Gerar arquivo yaml
````
kubectl create service clusterip mysql --tcp=3306:3306 --dry-run -o yaml > mysql-service.yaml
kubectl create deployment workpress --image=wordpress:4.8-apache --dry-run -o yaml > wordpress.yaml
kubectl create service clusterip wordpress --tcp 80:80 --dry-run -o yaml > http-service.yaml
````
Obs: 
 - Porem precisa ter correções manuais.
 - type: ClusterIP usado nos testes para não utilizar IP quente valido e pagar para o google

