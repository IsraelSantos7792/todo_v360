# Todo App - Gerenciador de tarefas

## Sobre o projeto

Aplicação desenvolvida em Ruby on rails com frontend em bootstrap.<br>
Gerenciador de tarefas com N funcionalidades:
- Criação de Listas
- Criação de tarefas
- Tag para concluir/refazer as tarefas
- Download da lista em um arquivo CSV
- Gráficos
- Download de gráficos em PNG

<br>

## Layout
<img src="https://user-images.githubusercontent.com/47953113/159757908-b8b5629e-e99e-4d4b-82ed-236844d603aa.jpeg" width="600">
<img src="https://user-images.githubusercontent.com/47953113/159758102-9e94bec3-3644-4aa9-b3d6-6524dd53dae4.jpeg" width="600">
<img src="https://user-images.githubusercontent.com/47953113/159758168-426ea29c-f3a2-430b-a39b-8d42d57a69cc.jpeg" width="600">

<br>

# Tecnologias utilizadas
<br>

## Backend
- Ruby 
- Ruby on Rails 
- Postgresql
- Gem's ("chartkick", "groupdate", "stimulus-reflex")

## Front end
- Bootstrap<br>

# Como executar o projeto

Pré-requisitos: yarn / Ruby / Rails

```bash
# clonar repositório
git clone git@github.com:IsraelSantos7792/todo_v360.git

# entrar na pasta do projeto
cd todo_v360

# instalar dependências back
bundle install

# habilitar cache para stimulus_reflex
rails dev:cache

# instalar dependências front
yarn

# gerar migrate
rails db:migrate

# executar o projeto
rails s

# aplicação estará disponível na porta: 3000

```
## Link da aplicação no Heroku

https://todo-v360.herokuapp.com

## Autor

Israel Santos 

https://www.linkedin.com/in/israel-santos-94123915a/
