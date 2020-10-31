docker build -t [dockerid]/image-name:latest -t [dockerid]/image-name:$SHA -f ./client/Dockerfile ./client
docker build -t [dockerid]/image-name:latest -t [dockerid]/image-name:$SHA -f ./server/Dockerfile ./client
docker build -t [dockerid]/image-name:latest -t [dockerid]/image-name:$SHA -f ./worker/Dockerfile ./client
docker push [dockerid]/image-name:latest
docker push [dockerid]/image-name:latest
docker push [dockerid]/image-name:latest
docker push [dockerid]/image-name:$SHA
docker push [dockerid]/image-name:$SHA
docker push [dockerid]/image-name:$SHA
kubectl apply -f ./k8s
kubeclt set image deployments/server-deployment server=[dockerid]/image-name:$SHA
kubeclt set image deployments/client-deployment client=[dockerid]/image-name:$SHA 
kubeclt set image deployments/worker-deployment worker=[dockerid]/image-name:$SHA 
