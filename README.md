# Heroku Docker gunicorn boilerplate [![Django CI](https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate/workflows/Django%20CI/badge.svg)](https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate/actions)

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate)

This boilerplates provides an example of a React / Django (Client / Server) based application hosted on Heroku with a Gunicorn Django setup running in Docker.

## Relevant files

### [app.json](https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate/blob/master/heroku.yml)

The app.json file is there for specifiying all the dependencies of your Heroku application. These can be addon-specific ones (Postgres e.g.), environment variables which needs to be set or hardware specification for you dynamic created environments via Review Apps.

Find more about that file in the [Heroku docs](https://devcenter.heroku.com/articles/app-json-schema).

### [Dockerfile](https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate/blob/master/Dockerfile)

The Dockerfile combines the React Django application in a single Docker image. It first builds the client and then installs all the necessary dependencies for Django backend.

Find more about that file in the [Heroku docs](https://devcenter.heroku.com/articles/container-registry-and-runtime#dockerfile-commands-and-runtime).

### [heroku.yml](https://github.com/scoutbeedev/heroku-docker-gunicorn-boilerplate/blob/master/heroku.yml)

Via this file you combine the Dockerfile with your Heroku setup by instructing which Dockerfile should be used with which container. In our case we use the Dockerfile in the root directory as a web container which can act as a web server.

Find more about that file in the [Heroku docs](https://devcenter.heroku.com/articles/build-docker-images-heroku-yml).
