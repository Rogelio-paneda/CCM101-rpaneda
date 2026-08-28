# Client Recommendations

## Client A — Startup Company
**Scenario:** A startup wants to launch a new mobile application on a limited budget, but expects rapid growth.

**Recommended Platform:** AWS

**Justification:** AWS is a strong fit for a resource-constrained startup expecting to scale quickly because its Free Tier and pay-as-you-go pricing keep initial costs low, while services like Lambda and DynamoDB scale automatically without the team needing to re-architect as usage grows. AWS also has the largest library of tutorials, startup credit programs (AWS Activate), and third-party integrations, which matters when a small team can't afford a dedicated infrastructure specialist.

**Services to use:**
- **AWS Amplify** — quickly builds and hosts the mobile app's backend and frontend
- **Lambda** — serverless compute that scales automatically and only charges for actual usage
- **DynamoDB** — a managed NoSQL database that scales with the app without manual provisioning

## Client B — University
**Scenario:** A university already uses Windows Server, Microsoft 365, and Active Directory, and wants to migrate some services to the cloud.

**Recommended Platform:** Microsoft Azure

**Justification:** Since the university's identity system is already Active Directory and its productivity suite is Microsoft 365, Azure lets them extend that same identity system into the cloud with Microsoft Entra ID rather than rebuilding user accounts from scratch. Existing Windows Server licenses can also be applied toward Azure VM costs through Azure Hybrid Benefit, and IT staff who already know Microsoft tools face a much smaller learning curve than switching to an unfamiliar platform.

**Services to use:**
- **Microsoft Entra ID** — extends the university's existing Active Directory to the cloud for single sign-on
- **Azure Virtual Machines** — migrates existing Windows Server workloads with minimal changes
- **Azure Files / Blob Storage** — cloud file shares and storage that integrate with existing Windows permissions

## Client C — AI Research Company
**Scenario:** A research company develops AI/ML applications that require high-performance computing.

**Recommended Platform:** Google Cloud Platform

**Justification:** GCP is purpose-built for this workload — Vertex AI provides an end-to-end platform for training and deploying models, and GCP's custom TPU hardware is specifically optimized for the kind of large-scale matrix computation AI training requires, often outperforming general-purpose GPUs for the right workloads. Combined with BigQuery for the large datasets AI research typically depends on, GCP reduces the amount of custom infrastructure the research team has to manage themselves.

**Services to use:**
- **Vertex AI** — managed platform for training, tuning, and deploying machine learning models
- **Compute Engine with TPUs/GPUs** — high-performance compute for model training
- **BigQuery** — serverless analytics for processing the large datasets used in research

## Client D — Global E-Commerce Company
**Scenario:** A multinational online shopping company needs highly available infrastructure with automatic scaling.

**Recommended Platform:** AWS

**Justification:** AWS's global footprint of 37+ regions and 120+ Availability Zones gives a multinational e-commerce company the most options for placing infrastructure close to customers worldwide while maintaining redundancy. Services like Auto Scaling and Elastic Load Balancing are built specifically to handle unpredictable traffic spikes (e.g., holiday sales) without manual intervention, and CloudFront's edge network keeps product pages loading fast globally.

**Services to use:**
- **EC2 Auto Scaling** — automatically adds or removes servers based on real-time traffic
- **Elastic Load Balancing (ELB)** — distributes incoming traffic across multiple servers/regions
- **CloudFront** — a global content delivery network (CDN) that caches content close to customers worldwide

## Multi-Cloud Decision Matrix 

| Business Requirement | Recommended Platform | Justification |
|---|---|---|
| Startup Company | AWS | Lowest barrier to entry, pay-as-you-go pricing, largest ecosystem of tutorials/support |
| Enterprise Organization | AWS | Broadest catalog of services covers virtually any enterprise workload |
| Microsoft Environment | Azure | Native integration with Active Directory, Microsoft 365, and Windows Server licensing |
| AI / Machine Learning | GCP | Vertex AI, TPUs, and the strongest track record in ML research |
| Kubernetes Deployment | GCP | GKE is the most mature managed Kubernetes, built by the creators of Kubernetes |
| Global Web Application | AWS | Largest global AZ footprint and the most mature auto-scaling/CDN tooling |
