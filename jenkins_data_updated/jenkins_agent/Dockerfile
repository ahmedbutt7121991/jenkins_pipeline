FROM ubuntu
RUN mkdir -p /var/run/sshd
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt update && apt install -y apt-transport-https
RUN apt install -y openjdk-8-jdk
RUN apt install -y openssh-server
RUN ssh-keygen -A
ADD ./sshd_config /etc/ssh/sshd_config
RUN echo root:password123 | chpasswd
CMD ["/usr/sbin/sshd", "-D"]

