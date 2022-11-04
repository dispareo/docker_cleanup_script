#Before you run this, make sure you have committed changes and pushed to whatever repo you'd like.
#This is not a gentle script, but it's quite effective.

for i in `docker ps | awk '{print $1}' | awk 'NR!=1 {print}'`; do docker stop $i -f; done
for i in `docker container ls -a | awk '{print $1}'|awk 'NR!=1 {print}'`; do docker rm $i -f; done
for i in `docker image ls | awk '{print $3}'|awk 'NR!=1 {print}'`; do docker rmi $i -f; done
for i in `docker volume ls | awk '{print $2}' | awk 'NR!=1 {print}'`; do docker volume rm $i -f; done
