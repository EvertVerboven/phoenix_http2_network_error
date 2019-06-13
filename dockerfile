##############
# BASE IMAGE #
##############
FROM elixir:1.8-alpine AS base-image
LABEL maintainer "YipYip <devops@yipyip.nl>"

# Bash needed for test scripts
# [make, gcc, libc-dev] needed for compiling elixir_argon2
# [inotify-tools] required for Phoenix live-reloading
RUN apk add --no-cache --update nodejs-npm bash make gcc libc-dev pkgconfig autoconf automake libtool nasm build-base zlib-dev inotify-tools