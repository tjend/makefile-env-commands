# build a docker image to run run shellspec tests:
# - use alpine as a base
# - install shellspec
# - install make
# - install ncurses which provides the 'tput' command
# - install util-linux which provides the column command
FROM docker.io/alpine:latest

RUN \
  wget -O - https://raw.githubusercontent.com/shellspec/shellspec/master/install.sh | \
  sh -s master.tar.gz --prefix /usr/local --yes && \
  apk add --no-cache \
    make \
    ncurses \
    util-linux

CMD shellspec
