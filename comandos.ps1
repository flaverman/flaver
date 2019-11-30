sudo docker build -t suma .  # crea imagen
docker run -it --rm suma npm test



https://github.com/coursesNorman404/devOps

https://www.digitalocean.com/community/tutorials/como-instalar-y-usar-docker-en-ubuntu-18-04-1-es  # instalar docker ubuntu

usermod -a -G docker jenkins # da acceso a usuario jenkins de usar docker

service jenkins restart # reinicia jenkins


<#

usuario@Usuario:~/Desktop/docker$ git add
Nothing specified, nothing added.
Maybe you wanted to say 'git add .'?
usuario@Usuario:~/Desktop/docker$ git add .
usuario@Usuario:~/Desktop/docker$ git commit -m "Jenkins test run"
[master 9bb435b] Jenkins test run
 2 files changed, 12 insertions(+), 1 deletion(-)
usuario@Usuario:~/Desktop/docker$ git push

#>

unit test
integration test
aceptation test

code coverage