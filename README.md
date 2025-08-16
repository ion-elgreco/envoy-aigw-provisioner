# envoy-aigw-provisioner

Helm chart to provision an AI gateway using the Envoy AIGW controller

## Installation

Add this Helm repository:

```sh
helm repo add aigw https://ion-elgreco.github.io/envoy-aigw-provisioner
helm repo update
helm install my-aigw aigw/ai-gateway-provisioner
```

## Compatibility matrix

Use the table below to find the compatible combination of Envoy AIGW controller (aigw) and this provisioner chart.

| Envoy AIGW (controller) | Provisioner chart |
|-------------------------:|:------------------|
| 0.2.x                   | 0.1.x             |
| 0.3.x                   | 0.2.x             |

Notes:
- The provisioner chart and the Envoy AIGW controller follow a tightly-coupled compatibility surface. Always ensure you install the chart version that matches the controller series you plan to use.
- If you are upgrading either the controller or the chart, check the chart's CHANGELOG or release notes for any migration steps required between versions.
