# installs tekton pieces only
# assumes existing kubernetes cluster
# docker registry needs to be available at localhost:5000
# puts command line interface in /usr/local/bin

kubectl create ns tekpipe
kubectl create ns roar-tekton
#kubectl create secret -n tekpipe docker-registry regcreds --docker-server=http://localhost:5000/v2 --docker-username=*** --docker-password=***
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
curl -LO https://github.com/tektoncd/cli/releases/download/v0.24.0/tkn_0.24.0_Linux_x86_64.tar.gz
tar xvzf tkn_0.24.0_Linux_x86_64.tar.gz -C . tkn
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml

kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml




 
