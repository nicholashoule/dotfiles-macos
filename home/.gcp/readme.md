# GCP CLI

[GCP - Install (gcloud)](https://cloud.google.com/sdk/docs/install-sdk#mac)

## Install with Curl

##### macOS 64-bit

```
curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-404.0.0-darwin-x86_64.tar.gz" -o "google-cloud-cli-amd64.tar.gz"
tar -xzf google-cloud-cli-amd64.tar.gz && ./google-cloud-sdk/install.sh
```

```
./google-cloud-sdk/bin/gcloud init
```

##### macOS 64-bit (arm64, Apple M1 silicon)

```
curl "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-404.0.0-darwin-arm.tar.gz" -o "google-cloud-cli-arm.tar.gz"
tar -xzf google-cloud-cli-arm.tar.gz && ./google-cloud-sdk/install.sh
```

```
./google-cloud-sdk/bin/gcloud init
```

## Helpful

```
gcloud components list
gcloud components install gke-gcloud-auth-plugin
gcloud components install kubectl
```
