# installs tekton pieces only
# assumes existing kubernetes cluster
# docker registry needs to be available at localhost:5000
# puts command line interface in /usr/local/bin

kubectl create ns tekpipe
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml





 
