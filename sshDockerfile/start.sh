#/bin/bash
/usr/sbin/sshd                                 # 启动ssh-server服务
echo "root:${PASSWORD}" | chpasswd             # 修改系统密码
/bin/bash                                      # 启动一个前台进行 避免容器“闪退”