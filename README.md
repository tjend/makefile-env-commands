# makefile-env-commands

Use `make` to run commands defined in `.env`.

Make is usually installed by developers on Mac/Linux, so using make to run commands is easier than having to install a custom command/task runner such as [Task](https://taskfile.dev/) or [Just](https://github.com/casey/just).

## Define commands in `.env`

Define your commands along with comments in `.env`.

```shell
# define commands by prefixing the name with 'COMMAND_'
COMMAND_hello_world=echo 'hello world' # echo hello world

# quoting the command is an option
# use \" within the command to escape an actual quote
COMMAND_quoted_command="echo 'this command is \"quoted\" in .env using double quotes'" # quoted command
```

There is no need to learn/understand Makefile syntax.

## Drop in a copy of Makefile

Copy the Makefile into your project and you're good to go.

## Run make help

Running `make` shows the available commands along with their comments.

```shell
hello_world:     echo hello world
help:            list all make commands
quoted_command:  quoted command
```

If you've got tab-completion configured, this will work as expected showing your commands.

```shell
$ make <TAB><TAB>
hello_world     help            quoted_command
```

## Run your make command

Running your command will firstly echo the command to be run, followed by the output from running the command.

```shell
$ make hello_world
echo 'hello world'
hello world
```
