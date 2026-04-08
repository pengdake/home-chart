#!/bin/bash
helm install external-dns bitnami/external-dns    --set provider=rfc2136   --set rfc2136.host=192.168.31.100   --set rfc2136.port=53   --set rfc2136.zone=pengdake.xyz   --set rfc2136.tsigSecret=QLErbZUtNtEsCk5a4ExIyP6uM1WgVqXc1FxRyCDGaS4=  --set rfc2136.tsigKeyname=externaldns   --set rfc2136.tsigAlgorithm=hmac-sha256   --set policy=upsert-only --set txtOwnerId=k3s
