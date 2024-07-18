FROM rockylinux:8

# RPMs
RUN yum install openssh-server unzip passwd procps-ng tuned-utils.noarch systemd sudo -y

# PAM
RUN sed -i -- "s/session		include		system-auth/#session		include		system-auth/" /etc/pam.d/su

ENTRYPOINT ["/usr/sbin/init"]