cd ../
podman run --rm \
-v $(pwd):/cwd/ \
cr.sas.com/viya-4-x64_oci_linux_2-docker/sas-orchestration:1.165.2-20260513.1778688257619 \
create sas-deployment-cr \
--deployment-data /cwd/license/certs.zip \
--license /cwd/license/license.jwt \
--user-content /cwd/deploy \
--cadence-name lts \
--cadence-version 2026.03 \
--cadence-release 20260713.1783933662413 \
> argocd/deployment-cr/sasdeployment.yaml