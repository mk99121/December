The Cluster IP is used to expose the service internally within the cluster,
allowing other services within the cluster to communicate with it.

Create a nginx pod which will be our end point:

apiVersion: v1
kind: Pod
metadata:
 name: pod
 labels:
  author: sonal
  type: webserver
spec:
 containers:
  - name: c1
    image: nginx

# kubectl create -f nginx-pod.yml

# kubectl get pods -o wide

Make note of the ipaddress= that will the end point ipaddress

Create Cluster IP service for above pod

vim service1.yml

apiVersion: v1
kind: Service
metadata:
 name: mysvc1
spec:
 type: ClusterIP  # type of service
 selector: # endpoints selector
  type: webserver
 ports:
  - port: 80 # service port
    targetPort: 80 # container Image port

#  kubectl create -f service1.yml
# kubectl get service mysvc1 -o wide

Create a Test pod of image ubuntu that will send request to service ip:80,
vim testpod.yml

apiVersion: v1
kind: Pod
metadata:
 name: testpod
 labels:
  author: 
spec:
 containers:
  - name: c1
    image: ubuntu
    args: [/bin/bash, -c, 'sleep 6000']

# kubectl create -f testpod.yml


Lets validate if test pod is able to communicate with nginx pod using cluster IP


kubectl exec -it testpod -- bash

Inside the pod on the ubuntu container install curl

apt-get update && apt-get install curl -y

curl serviceip:80

You will be able to see nginx message.

