# Microsoft Azure Research

## Brief Overview
Microsoft Azure launched in 2010 as Microsoft's public cloud platform. Its biggest differentiator is how tightly it integrates with the Microsoft ecosystem — Windows Server, Active Directory, Microsoft 365, and .NET — which makes it the natural choice for organizations already standardized on Microsoft technology. Azure is also strong in hybrid cloud, where a company keeps some infrastructure on-premises and connects it to the cloud.

## Global Infrastructure
Microsoft markets Azure as having the broadest global footprint of any cloud provider, with **70+ announced regions** across more than 30 countries — more individual regions than AWS or GCP, though not all of them include multiple Availability Zones. Regions are grouped into "geographies" that act as data-residency boundaries (e.g., all EU regions stay within EU borders for compliance).

## Cloud Management Console
The **Azure Portal** is the primary web-based console for managing resources. Azure also provides **Azure Cloud Shell** (browser-based CLI with both Bash and PowerShell), the **Azure CLI**/**Azure PowerShell** for local scripting, a mobile app, and **Azure Resource Manager (ARM)** templates or Bicep for Infrastructure as Code.

## Four (4) Core Services
| Service | Category | What It Does |
|---|---|---|
| **Virtual Machines** | Compute | On-demand, resizable virtual servers (Windows or Linux) |
| **Blob Storage** | Storage | Object storage for unstructured data, backups, and static content |
| **Azure SQL Database** | Database | Fully managed relational database built on SQL Server |
| **Microsoft Entra ID** (formerly Azure AD) | Identity/Security | Identity and access management with single sign-on across Microsoft 365, Windows, and Azure |

## Three (3) Advantages
1. **Microsoft ecosystem integration** — seamless single sign-on and licensing with Windows Server, Active Directory, and Microsoft 365 makes migration far simpler for Windows-centric organizations.
2. **Strongest hybrid cloud story** — tools like Azure Arc and Azure Stack let a company manage on-premises servers side-by-side with cloud resources through the same portal.
3. **Enterprise agreements and licensing flexibility** — companies with existing Microsoft Enterprise Agreements can often apply existing licenses to Azure (Hybrid Benefit), lowering migration cost.

## Typical Enterprise Use Cases
- **Organizations already running Windows Server, Active Directory, or Microsoft 365** that want to extend or migrate to the cloud without abandoning their existing identity system.
- **Hybrid cloud deployments**, where some workloads stay on-premises for compliance while others move to Azure.
- **.NET application hosting**, since Azure App Service and Visual Studio integrate directly with the Microsoft development toolchain.
- **Government and regulated industries**, which often favor Azure Government's compliance certifications (FedRAMP, CMMC, etc.).
