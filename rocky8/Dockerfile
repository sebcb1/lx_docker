FROM rockylinux:8

# RPMs
RUN yum install openssh-server unzip passwd procps-ng tuned-utils.noarch systemd sudo openssh-clients crontabs -y

# PAM
RUN sed -i -- "s/session		include		system-auth/#session		include		system-auth/" /etc/pam.d/su

RUN systemctl enable crond
RUN systemctl enable sshd


ENTRYPOINT ["/usr/sbin/init"]