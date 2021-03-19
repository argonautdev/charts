#! /bin/bash

VERSION=$1

for d in charts/*
do
echo $d ${d##"charts/"}
sed -i -e "s/version:\ v*.*.*/version:\ $VERSION/g" $d/Chart.yaml
sed -i -e "s/appVersion:\ v*.*.*/appVersion:\ $VERSION/g" $d/Chart.yaml
helm package $d
mv ${d##"charts/"}-$1.tgz dist/

done


# sed -i -e 's/version:\ dev/version:\ $1/g' charts/external/Chart.yaml
# sed -i -e 's/appVersion:\ dev/appVersion:\ $1/g' charts/external/Chart.yaml
# helm package charts/stateful
# mv stateful-$1.tgz dist/

# sed -i -e 's/version:\ dev/version:\ $1/g' charts/external/Chart.yaml
# sed -i -e 's/appVersion:\ dev/appVersion:\ $1/g' charts/external/Chart.yaml
# helm package charts/stateless
# mv stateless-$1.tgz dist/

helm repo index dist --url https://raw.githubusercontent.com/argonautdev/charts/main/dist/
echo "Updated chart index"