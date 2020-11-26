# Helm charts. Get yer helm charts.

Argonaut Resource Templates, `art`s for short, help you deploy services with ease.
We call these charts that are used art-charts. Because alliteration.

```
helm repo add art-charts https://raw.githubusercontent.com/argonautdev/charts/main/dist/
helm upgrade --install art-charts/service -f values.yaml -n dev
```

## Generate and serve helm charts

```
helm package charts/managed
mv managed-v0.1.0.tgz dist/
helm repo index dist --url https://raw.githubusercontent.com/argonautdev/charts/main/dist/
```
