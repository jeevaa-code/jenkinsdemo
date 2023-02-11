FROM ubuntu
RUN touch helloworld.txt
RUN echo "welcome to docker" > helloworld.txt
RUN cat /etc/hosts
RUN cat /etc/*release*
