FROM centos
MAINTAINER Jelle <jelle@jellederksen.nl>

# Add repo file
ADD ./jelle.repo /etc/yum.repos.d/

# Install cool software
RUN yum --assumeyes update && \
yum --assumeyes install \
nmap iproute && \
bash && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"] 
