We have two servers - modded and vanilla.

Manifests in deploy/

Important! Do not kubectl apply! Deploys managed through flux. Instead, commit + push + flux reconcile kustomization minecraft --with-source.

Reliably restart servers by scaling the sts replica count to 0 (check pods stopped), then back to 1.

Severs exposed at minecraft-vanilla.nefcloud.top and minecraft-modded.nefcloud.top.

kubectl -n minecraft get sts
kubectl -n minecraft get pods
