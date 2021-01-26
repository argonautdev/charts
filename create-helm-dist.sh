#! /bin/bash

helm package charts/managed
mv managed-v0.1.0.tgz dist/

helm package charts/service
mv service-v0.1.0.tgz dist/

helm repo index dist --url https://raw.githubusercontent.com/argonautdev/charts/main/dist/
echo "Updated chart index"