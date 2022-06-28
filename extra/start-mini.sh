sudo minikube start --vm-driver=none
cd ~/istio-1.14.1
export PATH=$PWD/bin:$PATH
istioctl install --set profile=demo -y
kubectl create ns argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.2.5/manifests/install.yaml

