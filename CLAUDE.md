We have two servers - modded and vanilla.

Manifests in deploy/

Important! Do not kubectl apply! Deploys managed through flux. Instead, commit + push + flux reconcile kustomization minecraft --with-source.

Reliably restart servers by scaling the sts replica count to 0 (check pods stopped), then back to 1.

Severs exposed at minecraft-vanilla.nefcloud.top and minecraft-modded.nefcloud.top.

Ports: vanilla is on the default 25565; modded is on 25566 (separate Traefik entrypoint). minecraft-modded.nefcloud.top has an SRV record pointing to gateway.nefcloud.top:25566, so clients resolve the modded port automatically — no need to type the port.

kubectl -n minecraft get sts
kubectl -n minecraft get pods
