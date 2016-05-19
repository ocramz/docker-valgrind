FROM ubuntu:14.04

MAINTAINER Marco Zocca, zocca.marco gmail

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y make sudo wget curl build-essential


# # valgrind
RUN sudo apt-get install valgrind 

ENTRYPOINT [ "/usr/bin/make" ]
CMD [ "--help" ]

# # triggers for derived containers
# onbuild add . /src
# onbuild workdir /src
