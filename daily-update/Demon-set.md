Demon sets ensure that all the nodes in the cluster runs single copy of a Pod.
As a new node is added to the cluster, Single pod will automatically be created on that node
If the node is deleted those pods will also get deleted
you don't do replicas in a daemonset, it runs on all nodes
Commonly used:
Run a pod on every node, that run a log collection deamon
Run a pod on every node for cluster backup
Run a pod on every node for monitoring
Example:

apiVersion: apps/v1
kind: DaemonSet
metadata:
 name: myds
spec:
 selector:  
  matchLabels:
    type: webserver 
 template:
  metadata:   
   name: mypod
   labels:    
    type: webserver
  spec:
   containers:
    - image: nginx
      name: c1

#kubectl create -f testds.yaml
#kubectl get ds