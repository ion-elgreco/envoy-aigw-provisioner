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

Use the table below to select a stack supported by this provisioner project. A `+` means that Envoy Gateway version or newer within the applicable compatibility line.

| Envoy AI Gateway | Envoy Gateway | Kubernetes | Gateway API | Provisioner chart | Support status |
|:-----------------|:--------------|:-----------|:------------|:------------------|:---------------|
| `v1.0.x`         | `v1.8.1+` (Envoy Proxy `v1.38.x`) | `v1.32+` | `v1.5.x` | `0.5.x` | Supported |
| `v0.5.x`         | `v1.6.x+` (Envoy Proxy `v1.35.x`) | `v1.32+` | `v1.4.x` | `0.4.x` | Supported |
| `v0.4.x`         | `v1.5.x+` (Envoy Proxy `v1.36.x`) | `v1.31+` | `v1.4.x` | `0.3.x` | Supported by provisioner |
| `v0.3.x`         | `v1.5.x+` (Envoy Proxy `v1.35.x`) | `v1.31+` | `v1.3.1` | `0.2.x` | Supported by provisioner |
| `v0.2.x`         | `v1.4.x+` (Envoy Proxy `v1.34.x`) | `v1.29+` | `v1.3.0` | `0.1.x` | Supported by provisioner |

- Install the Envoy Gateway and Envoy AI Gateway CRDs before installing this provisioner chart.
- Keep the provisioner chart aligned with the Envoy AI Gateway controller series shown above.
- When upgrading, follow the Envoy AI Gateway release guidance and upgrade no more than two minor versions at a time.
