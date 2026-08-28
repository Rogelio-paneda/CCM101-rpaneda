
# AWS Research

## Brief Overview
Amazon Web Services (AWS) launched in 2006 and is widely credited as the platform that started the public cloud industry. It's currently the market leader by revenue and service breadth, with over 200 fully featured services spanning compute, storage, databases, networking, machine learning, and IoT. Because it's been around the longest, AWS tends to have the deepest and most mature service catalog of the three major providers.

## Global Infrastructure
AWS organizes its infrastructure into **Regions** (independent geographic areas) and **Availability Zones**, or AZs (isolated data center clusters within a region, usually 3+ per region for fault tolerance). As of 2026, AWS operates roughly **37 Regions and 120+ Availability Zones** worldwide, plus a growing network of Local Zones and Wavelength Zones for ultra-low-latency use cases, and 700+ CloudFront edge locations for content delivery.

## Cloud Management Console
The **AWS Management Console** is the web-based dashboard used to provision and monitor resources. AWS also offers the **AWS CLI**, **AWS CloudShell** (browser-based terminal), SDKs for most major programming languages, and a mobile console app, so resources can be managed through a UI or entirely through code/automation (Infrastructure as Code via CloudFormation or Terraform).

## Four (4) Core Services
| Service | Category | What It Does |
|---|---|---|
| **EC2** (Elastic Compute Cloud) | Compute | Resizable virtual servers (instances) for running applications |
| **S3** (Simple Storage Service) | Storage | Object storage for files, backups, static websites, and data lakes |
| **RDS** (Relational Database Service) | Database | Managed relational databases (MySQL, PostgreSQL, SQL Server, etc.) |
| **IAM** (Identity and Access Management) | Identity/Security | Controls who can access which AWS resources and what they can do |

## Three (3) Advantages
1. **Broadest service catalog** — AWS has the largest number of managed services of any provider, so it's rare to need a third-party tool for a common workload.
2. **Market maturity and ecosystem** — the largest community, most third-party tutorials/certifications, and the biggest partner/marketplace ecosystem, which lowers the learning curve and hiring risk.
3. **Global reach and reliability** — the largest AZ footprint means it's easier to design highly available, multi-region architectures close to customers almost anywhere in the world.

## Typical Enterprise Use Cases
- **Startups and scale-ups** that need to go from a handful of users to millions without re-architecting (e.g., Netflix's original migration to AWS).
- **Large-scale web and mobile backends** that need auto-scaling compute (EC2 Auto Scaling, Lambda) paired with managed databases.
- **Big data and analytics pipelines** using services like S3 as a data lake combined with Redshift or Athena for querying.
- **Enterprise migration ("lift and shift")** of existing on-premises data centers, using services like AWS Migration Hub and Direct Connect.

*Screenshot placeholder: add a screenshot of the AWS homepage or AWS Management Console to `screenshots/aws-homepage.png` and reference it here.*
