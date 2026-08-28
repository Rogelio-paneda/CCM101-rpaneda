# Google Cloud Platform (GCP) Research

## Brief Overview
Google Cloud Platform traces back to 2008 (starting with App Engine) and was built on the same infrastructure Google uses internally to run Search, Gmail, and YouTube. GCP is the smallest of the "big three" by market share, but it's widely regarded as the technical leader in data analytics, artificial intelligence/machine learning, and container orchestration — GCP created the Kubernetes project.

## Global Infrastructure
GCP operates **43 regions and 130 zones** as of 2026, spread across more than 200 countries and territories via its network edge locations. Each region has at least three zones, and Google is unique in also offering specialized **AI zones** with high-capacity GPUs/TPUs for large-scale AI training workloads.

## Cloud Management Console
The **Google Cloud Console** is the web-based management dashboard. GCP also provides **Cloud Shell** (a free browser-based terminal with the `gcloud` CLI pre-installed), the `gcloud` command-line tool for local use, client libraries for major languages, and Terraform/Deployment Manager for Infrastructure as Code.

## Four (4) Core Services
| Service | Category | What It Does |
|---|---|---|
| **Compute Engine** | Compute | Customizable virtual machines |
| **Cloud Storage** | Storage | Object storage for files, backups, and data lakes |
| **BigQuery** | Database/Analytics | Serverless data warehouse for running SQL analytics at massive scale |
| **Google Kubernetes Engine (GKE)** | Containers | Managed Kubernetes for deploying and scaling containerized applications |

## Three (3) Advantages
1. **AI/ML leadership** — Vertex AI, custom TPU hardware, and deep integration with tools like TensorFlow give GCP an edge for machine learning and generative AI workloads.
2. **Best-in-class Kubernetes** — since Google created Kubernetes, GKE is generally considered the most mature and hands-off managed Kubernetes offering of the three providers.
3. **Strong data analytics tooling** — BigQuery lets teams run massive SQL queries without managing any infrastructure, which is a major draw for data-heavy organizations.

## Typical Enterprise Use Cases
- **AI/ML and data science teams** training and deploying models at scale (research labs, recommendation engines, computer vision).
- **Data analytics-heavy organizations** that want a serverless data warehouse (BigQuery) instead of managing their own database clusters.
- **Kubernetes-native companies** running containerized microservices that want the most mature managed Kubernetes experience.
- **Media, gaming, and streaming companies** that benefit from Google's global network backbone for low-latency content delivery.
