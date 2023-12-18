# build a docker image to run bats-core tests:
# - use bats/bats:latest as the base image
# - install make
# - install ncurses which provides the 'tput' command
# - install util-linux which provides the column command
FROM docker.io/bats/bats:latest

RUN apk add --no-cache make ncurses util-linux
