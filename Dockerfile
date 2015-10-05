FROM jenkins

USER root
RUN wget -qO- https://get.docker.com/ | sed 's/lxc-docker/lxc-docker-1.7.1/' | sh
RUN usermod -aG docker jenkins

USER jenkins
