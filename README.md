# README

This app creates a database, a table "Application" with 3 columns : "name", "owner" and "techno".
Both datas must not be null, name has to be unique and to be composed only by letters or numbers.
It also allows you to fill the database with a new application, and to import applications from a csv file.
It renders json object with the datas from Application.
In the future, it should be able to render a json object with the count for each owner and each app.
You should also be able to filter and sort by URL.

## Installing the project

### Using docker and docker-compose

```
$ docker-compose build web # builds the container according to the Dockerfile
$ docker-compose run web bin/setup # executes a script that install missing ruby dependencies and prepares the database
```

### Without docker

- macOS users should install and use [homebrew](https://brew.sh)
- You will need a working [rbenv installation](https://github.com/rbenv/rbenv#installation), follow its readme for instructions and shell integration
- You will need sqlite to be available for your system. macOS users should have it by default. For linux based OS, it may vary. To install is on debian/ubuntu: `apt-get install -y sqlite3 libsqlite3-dev`

There should be no other system dependencies for running this projects. Once those are installed:

- `$ bin/setup # executes a script that install missing ruby dependencies and prepares the database`

## Starting the project

Using docker and docker-compose: `$ docker-compose up`

Without docker: `$ bin/rails s`

In both cases, opening `localhost:4048` in your browser should display the rails default page, with

## Running a rails or rake command

Using docker and docker-compose: `$ docker-compose run web bin/rails <command>`

Without docker: `$ bin/rails <command>`

`bin/rails` can invoke rake commands as well.
