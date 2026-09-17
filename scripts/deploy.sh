cd ../deploy
oc kustomize -o site.yaml
oc apply --selector="sas.com/admin=cluster-api" --server-side --force-conflicts -f site.yaml
oc wait --for condition=established --timeout=60s -l "sas.com/admin=cluster-api" crd
oc apply --selector="sas.com/admin=cluster-wide" -f site.yaml
oc apply --selector="sas.com/admin=cluster-local" -f site.yaml --prune
oc apply --selector="sas.com/admin=namespace" -f site.yaml --prune