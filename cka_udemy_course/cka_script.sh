wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/linux/amd64/kube-controller-manager

kubectl get pods -n kube-system
# view kube-controller-manager-options - kubeadm
cat /etc/kubernetes/minifests/kube-controller-manager.yaml
# node-monitor-period=5s
# node-monitor-grace-period=40s
# pod-eviction-timeout=5m0s

# view controller-manager options
cat /etc/systemd/system/kube-controller-manager.service
# or
ps -aux | grep kube-controller-manager

wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kube-scheduler

# view kube-scheduler options - kubeadm
cat /etc/kubernetes/manifests/kube-scheduler.yaml
# or 
ps -aux | grep kube-scheduler

# installing kubelet
wget https://storage.googleapis.com/kubernetes-release/v1.13.0/bin/linux/amd64/kubelet

# view kubelet options
ps -aux | grep kubelet

# install kube-proxy
wget https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kube-proxy

# view kubelet proxy -kubeadm
kubectl get pod -n kube-system
kubectl get damonset -n kube-system

kubectl run nginx --image nginx
kubectl get pods

# create pod
kubectl create -f pod-definition.yml
# get pod detail
kubectl describe pod myapp-pd
# apply (could update I think) pod
kubectl apply -f pod.yaml