#Install the SAS Deployment operator
cd ../deployment-operator/deploy/
oc kustomize -o sasoperator.yaml
oc apply -f sasoperator.yaml -n sasviya
#oc new-project sasoperator
#oc apply -f sasoperator.yaml -n sasoperator