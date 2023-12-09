# makefile-env-commands

Use `make` to run commands defined in `.env`.

Make is usually installed by developers on Mac/Linux, so using make to run commands is easier than having to install a custom command/task runner such as [Task](https://taskfile.dev/) or [Just](https://github.com/casey/just).

## Define commands in `.env`

Define your commands along with comments in `.env`.

```shell
# define commands by prefixing the name with 'COMMAND_'
COMMAND_test=echo 'hello test' # test command comment
COMMAND_world=echo 'hello world' # world command comment
```

There is no need to learn/understand Makefile syntax.

## Drop in a copy of Makefile

Copy the Makefile into your project and you're good to go.

## Run make help

Running `make` shows the available commands along with their comments.

```shell
docker-compose-build:  run docker-compose build
docker-compose-down:   run docker-compose down
docker-compose-up:     run docker-compose up
help:                  list all make commands
test:                  test command comment
world:                 world command comment
```

If you've got tab-completion configured, this will work as expected showing your commands.

```shell
$ make <TAB><TAB>
docker-compose-build  docker-compose-up     test
docker-compose-down   help                  world
```

## Run your make command

Running your command will firstly echo the command to be run, followed by the output from running the command.

```shell
$ make test
echo 'hello test'
hello test
```
