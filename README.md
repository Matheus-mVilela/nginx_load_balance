# nginx_load_balance

- Start de um projeto django padrão, com nginx fazendo o load balance entre tres container que usam o mesmo db.

## Prerequisites
- Docker 
- Docker-compose

- Para instalar o docker, siga as instruções do [tutorial](https://phoenixnap.com/kb/install-docker-compose-ubuntu):

## Bulding and Running
- Após a instalação e configuração do docker, navegue até o diretório do projeto e execute:

```
   $ make build
   $ make db
   $ make up
```

- Home: 0.0.0.0/
- Admin: 0.0.0.0/admin

## Testing

- Para testas o load balance abra o log dos 3 containers backend e submeta requests a Home ou Admin.