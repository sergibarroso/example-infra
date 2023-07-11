# Example Infrastructure

This is the repository for the infrastructure. Developed by the labs' team.

Use the following development workflow to code features or fixes for this app.

- Create a feature/fix branch
- Code the new feature
- Create a Merge Request to the target environment:
  - Production: main branch
  - Staging: staging branch
  - Dev: dev branch
- On every new commit, the code will be lint and tested and you could get your feedback in the Actions section of GitHub.
- When the Merge Request is reviewed and merged, the new version of the application will be deployed into the target environment cluster.

## Directory structure

- **Amenities**: Kubernetes cluster amenities, such as Cert-Manager, Ingress Controller and multiple governance manifests
- **Compositions**: Terraform code that calls the different modules per domain, such as Service Account and Kubernetes Clusters.
- **Requirements**: All resources needed to run the Terraform compositions on a pipeline, such as Backend and Service Account.

## Local development

### Google Cloud login

```shell
gcloud auth application-default login
gcloud components install gke-gcloud-auth-plugin
```

### Test Terraform

```shell
terraform init && terraform validate && terraform fmt && terraform plan
```

### Get cluster access

```shell
gcloud container clusters get-credentials "<CLUSTER_NAME>" --region "<REGION>"
kubectl config set-context --current --namespace=<CLUSTER_NAME>
```