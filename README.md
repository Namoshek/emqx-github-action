<div align="center">
  <p>
    <h3>EMQ X MQTT Broker in GitHub Actions</h3>
  </p>
  <p>Start an EMQ X message broker in your GitHub Actions.</p>
</div>

---

## Introduction

This GitHub Action starts an EMQ X message broker on the default port `1883` and `8083` for WebSockets.

This is useful when running tests against an MQTT broker.


## Usage

```yaml
name: Run tests

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Git checkout
        uses: actions/checkout@v1
  
      - name: Start EMQ X
        uses: namoshek/emqx-github-action@v0.1.0
        with:
          version: '4.2'
  
      - run: test
```

Currently, the following parameters are supported:

| Parameter | Default  | Description |
|-----------|----------|-------------|
| `version` | `latest` | An image tag of the [emqx/emqx](`https://hub.docker.com/r/emqx/emqx`) Docker image. |
| `port`    | `1883`   | The default port for TCP connections (without SSL). |
| `port-websockets` | `8083` | The port for WebSocket connections (without SSL). |

## License

This action is published under the [MIT license](LICENSE).
