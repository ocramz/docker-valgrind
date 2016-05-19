FROM ubuntu:14.04

MAINTAINER Marco Zocca, zocca.marco gmail

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y make build-essential


# # valgrind
USER root
RUN apt-get install -y valgrind 

# # show `make` help upon entry
# ENTRYPOINT [ "/usr/bin/make" ]
# CMD [ "--help" ]

# # triggers for derived containers
# onbuild add . /src
# onbuild workdir /src


# # # clean temp data
RUN sudo apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*