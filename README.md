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

Use the table below to select a compatible Envoy AI Gateway, Envoy Gateway, and provisioner chart combination.

| Envoy AI Gateway | Envoy Gateway | Gateway API | Provisioner chart | AI Gateway API |
|:-----------------|:--------------|:------------|:------------------|:---------------|
| 1.0.x            | 1.8.x         | 1.5.1       | 0.5.x             | `aigateway.envoyproxy.io/v1beta1` |
| 0.5.x            | 1.6.x         | 1.4.0       | 0.4.x             | `aigateway.envoyproxy.io/v1alpha1` |
| 0.4.x            | 1.5.x–1.6.x   | 1.4.0       | 0.3.x             | `aigateway.envoyproxy.io/v1alpha1` |
| 0.3.x            | 1.5.x         | 1.3.1       | 0.2.x             | `aigateway.envoyproxy.io/v1alpha1` |
| 0.2.x            | 1.4.x         | 1.3.0       | 0.1.x             | `aigateway.envoyproxy.io/v1alpha1` |

Notes:
- Install the Envoy Gateway and Envoy AI Gateway CRDs before installing this provisioner chart.
- Keep the provisioner chart aligned with the Envoy AI Gateway controller series shown above.
- When upgrading, follow the Envoy AI Gateway release guidance and upgrade no more than two minor versions at a time.
