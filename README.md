# Docker-golang-web

# git clone 

git clone https://github.com/chio-nzgft/Docker-golang-web.git

# build go-web

go get github.com/ajstarks/svgo
go build web.go

# build docker images

docker build -t web .

# exec docker web

docker run -d -p 192.168.0.70:9093:9090 web

# view http://192.168.0.70:9093/



![alt tag](https://pic.pimg.tw/echochio/1482807781-1275197610_n.png)

# in kubernetes :
 
kubectl create -f kubernetes.yaml

http://kubernetes_IP:30707/

# for openshift docker image : docker.io/echochio/openshift-go-web
port 8080 
