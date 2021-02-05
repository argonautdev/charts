# Helm charts. Get yer helm charts.

Argonaut Resource Templates, `art`s for short, help you deploy services with ease.
We call these charts that are used art-charts. Because alliteration.

```
helm repo add art-charts https://raw.githubusercontent.com/argonautdev/charts/main/dist/
helm upgrade --install art-charts/service -f values.yaml -n dev
```

## Generate and serve helm charts

```
helm repo index dist --url https://raw.githubusercontent.com/argonautdev/charts/main/dist/
```

## TODO:

- Add the chart generation to CI so that the right versions of charts are prepared automatically on push
- Move the chart serving to a `release package`
