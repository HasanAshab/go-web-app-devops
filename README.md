# Go Web Application – DevOps Edition

[![CI pipeline](https://github.com/HasanAshab/go-web-app-devops/actions/workflows/ci.yaml/badge.svg?event=push)](https://github.com/HasanAshab/go-web-app-devops/actions/workflows/ci.yaml)
[![Terraform CI-CD pipeline](https://github.com/HasanAshab/go-web-app-devops/actions/workflows/terraform-cicd.yaml/badge.svg)](https://github.com/HasanAshab/go-web-app-devops/actions/workflows/terraform-cicd.yaml)
[![1]](https://github.com/HasanAshab/go-web-app-devops/pkgs/container/go-web-app-devops)

[1]: https://ghcr-badge.egpl.dev/hasanashab/go-web-app-devops/size

This is a DevOps-enhanced deployment of a [basic Golang web application](https://github.com/iam-veeramalla/go-web-app), restructured and productionized with best practices for containerization, CI/CD, observability, and Kubernetes.

---

## 🚀 DevOps Features Implemented

* **Dockerized Build**: Multi-stage Dockerfile for efficient image creation.
* **Local Development**: `docker-compose` support with live reload for rapid iteration.
* **Kubernetes Deployment**: Complete manifest files for deployment on ***AWS EKS***.
* **Helm Charts**: Configurable Kubernetes manifests.
* **Ingress Management**: Ingress Controller (***NGINX***) for routing and external access.
* **CI with GitHub Actions**: [See more](#️-cicd-pipeline).
* **CD via Argo CD**: [See more](#️-cicd-pipeline).
* **Monitoring & Observability**: Prometheus and Grafana stack deployed via Helm.

---

## 📊 Monitoring (Prometheus & Grafana)

The application is instrumented for metrics and integrated with Prometheus and Grafana:

* **Prometheus** scrapes application metrics and Kubernetes cluster state.
* **Grafana** provides rich dashboards for visualization.

### Dashboards

* **Application Metrics**: Response times, request rate, error rate
* **Infrastructure**: Node health, pod resource usage, etc.

To access Grafana:

```bash
kubectl port-forward svc/grafana 3000:80 -n monitoring
```

Then navigate to: **[http://localhost:3000](http://localhost:3000)**
Default credentials: `admin / admin`

---

## 🧑‍💻 Local Development

To spin up the application locally with Docker:

```bash
docker-compose up
```

Once running, the server will be accessible at:
**[http://localhost:8080/courses](http://localhost:8080/courses)**

**Live reload** is enabled—code changes will be reflected instantly in the container.

---

## 📷 UI Preview

![Web Preview](static/images/golang-website.png)

---

## ⚙️ CI/CD Pipeline

This project is equipped with a robust DevSecOps CI/CD pipeline:

* **Push Pipeline**:
  ![Push Pipeline](static/images/cicd/push.png)
* **Pull Request Pipeline**:
  ![Pull Request Pipeline](static/images/cicd/pr.png)

---

## 🛠️ Prerequisites (for Prod Deployment)

* AWS EKS Cluster
* Argo CD configured and running
* Helm 3+
* NGINX Ingress Controller installed
* Prometheus + Grafana installed (via Helm)
* Docker and kubectl installed

---

## 📈 Future Improvements

* Add integration tests to CI
* Add alerting rules in Prometheus
* Configure custom Grafana dashboards
* Add OpenTelemetry for distributed tracing

---

## 🙋‍♂️ About Me

**Hasan Ashab** – DevOps Engineer
LinkedIn: [@hasan-ashab](https://www.linkedin.com/in/hasan-ashab)

---

Let me know if you want to include any actual Prometheus scrape config or example dashboards too.
