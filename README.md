# Helm charts. Get yer helm charts.

Argonaut Resource Templates, `art`s for short, help you deploy services with ease.
We call these charts that are used art-charts. Because alliteration.

## Generate and serve helm charts

```
./create-helm-dist.sh vx.y.z
```

## TODO:

- Add the chart generation to CI so that the right versions of charts are prepared automatically on push
- Move the chart serving to a `release package`
- Add `values.yaml` to each of the charts
