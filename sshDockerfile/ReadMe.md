## 说明
ssh-client、ssh-server容器，可以通过ssh远程连接容器   

## 使用
1、默认密码root   
2、在构建容器时指定密码    
`
docker build --pull --rm -f "sshDockerfile\Dockerfile" -t centos7-ssh:latest "sshDockerfile"  --build-arg PASSWORD=1
`    
3、在生成容器时指定密码    
`
docker run -it --name ssh --rm -p 22:22 -e PASSWORD=12 centos7-ssh:latest
`
