# Cloud Provider Comparison

## Equivalent Infrastructure Services

| Infrastructure Component | AWS | Microsoft Azure | Google Cloud Platform |
|---|---|---|---|
| Compute | EC2 (Elastic Compute Cloud) | Virtual Machines | Compute Engine |
| Storage | S3 (Simple Storage Service) | Blob Storage | Cloud Storage |
| Networking | VPC (Virtual Private Cloud) | Virtual Network (VNet) | VPC (Virtual Private Cloud) |
| Identity and Access Management (IAM) | AWS IAM | Microsoft Entra ID (formerly Azure AD) | Cloud IAM |

## Guide Questions

**1. Which cloud provider offers the broadest range of services? Explain your answer.**
AWS offers the broadest range, with 240+ managed services covering everything from compute and storage to niche offerings like satellite ground stations and quantum computing sandboxes. As the first major cloud provider, it's had the longest time to build out its catalog.

**2. Which cloud platform would you recommend for an organization that primarily uses Microsoft products?**
Azure, because of its deep integration with Active Directory, Microsoft 365, and .NET workloads. Microsoft Entra ID also provides single sign-on across the whole Microsoft ecosystem, making identity management far simpler for Windows-centric organizations.

**3. Which platform is widely recognized for Artificial Intelligence (AI), Machine Learning (ML), and Kubernetes services?**
Google Cloud Platform. GCP created Kubernetes and its managed offering (GKE) is considered the most mature, while Vertex AI and custom TPU hardware make it a leader for AI/ML workloads.

**4. What similarities did you observe among the three cloud providers?**
All three follow the same core infrastructure model — compute, storage, networking, and IAM — just under different names. They all offer pay-as-you-go pricing, global data center regions, and roughly 99% feature parity, meaning the differences come down to naming, ecosystem fit, and pricing rather than fundamentally different capabilities.
