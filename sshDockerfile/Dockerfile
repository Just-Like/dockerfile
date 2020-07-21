FROM centos:centos7
ADD  start.sh /start.sh
RUN chmod 777 start.sh && \
    yum -y install openssh-server openssh-clients vim net-tools  &&\ 
    ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N ''  &&\
    ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''  &&\
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -N '' && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config &&\
    echo "root:root" | chpasswd   
EXPOSE 22
WORKDIR /
ENTRYPOINT ["/bin/bash", "./start.sh" ]

