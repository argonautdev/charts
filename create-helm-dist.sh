#! /bin/bash

helm package charts/external
mv external-v0.1.0.tgz dist/

helm package charts/stateful
mv stateful-v0.1.0.tgz dist/

helm package charts/stateless
mv stateless-v0.1.0.tgz dist/

helm repo index dist --url https://raw.githubusercontent.com/argonautdev/charts/main/dist/
echo "Updated chart index"