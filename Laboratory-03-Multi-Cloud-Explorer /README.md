# Laboratory Activity 3: Multi-Cloud Explorer

## Mission Overview
This lab simulates joining the Cloud Evaluation Team at CloudNova Technologies to compare AWS, Microsoft Azure, and Google Cloud Platform, then recommend the right platform for different client scenarios — thinking like a Cloud Solutions Architect instead of just picking the most popular provider.

## Objectives
- Explore the major public cloud platforms (AWS, Azure, GCP)
- Identify each provider's core services
- Compare cloud services across providers
- Analyze business requirements and recommend appropriate cloud solutions
- Create professional technical documentation in Markdown
- Continue building a structured GitHub Cloud Computing Portfolio

## Contents of This Folder
| File | Contents |
|---|---|
| `aws-research.md` | AWS overview, infrastructure, console, core services, advantages, use cases |
| `azure-research.md` | Same breakdown for Microsoft Azure |
| `gcp-research.md` | Same breakdown for Google Cloud Platform |
| `cloud-platform-comparison.md` | Comparison table, guide question answers, and service-matching table |
| `client-recommendations.md` | Recommendations for 4 client scenarios + multi-cloud decision matrix |
| `reflection.md` | Mission reflection |
| `screenshots/` | Evidence screenshots for each checkpoint |

## Checkpoint 7 — Linux Investigation → Cloud Mapping

Terminal output collected from a KillerCoda Ubuntu Playground.

**Operating System:**
```
$ cat /etc/os-release
PRETTY_NAME="Ubuntu 24.04.4 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.4 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
```

**CPU Information:**
```
$ lscpu
Architecture:                x86_64
CPU(s):                      1
On-line CPU(s) list:         0
Vendor ID:                   GenuineIntel
Model name:                  Intel Xeon E312xx (Sandy Bridge, IBRS update)
  BIOS Model name:           RHEL-9.6.0 PC (Q35 + ICH9, 2009) CPU @ 2.0GHz
Thread(s) per core:          1
Core(s) per socket:          1
Socket(s):                   1
Hypervisor vendor:           KVM
Virtualization type:         full
Caches (sum of all):
  L1d: 32 KiB   L1i: 32 KiB   L2: 4 MiB   L3: 16 MiB
```

**Memory:**
```
$ free -h
               total        used        free      shared  buff/cache   available
Mem:           1.9Gi       417Mi       836Mi       1.1Mi       817Mi       1.5Gi
Swap:          1.0Gi          0B       1.0Gi
```

**Disk Space:**
```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           191M  996K  190M   1% /run
/dev/vda1        19G  5.4G   13G  30% /
tmpfs           952M   84K  952M   1% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/vda16      881M  117M  703M  15% /boot
/dev/vda15      105M  6.2M   99M   6% /boot/efi
```

**Discussion question: If this Linux server were migrated to the cloud, which AWS, Azure, and GCP services could host it?**

This KillerCoda VM is a single vCPU, ~2 GiB RAM, ~19 GB disk instance running Ubuntu 24.04 LTS on a KVM hypervisor — a small, burstable workload rather than anything compute-intensive. That maps to the smallest "general purpose / burstable" VM tier on each provider:

- **Compute** — On AWS, a **t3.small EC2 instance** (burstable, low vCPU count) is the closest match. On Azure, a **B1ms Virtual Machine** (Azure's burstable B-series, 1 vCPU/2 GiB) fits the same profile. On GCP, an **e2-small Compute Engine instance** covers it. All three offer "burstable" families specifically because most small servers like this one sit mostly idle, which matches the 417 MiB of RAM actually in use here.
- **Storage** — The 19 GB root volume (`/dev/vda1`) would map to a small block storage volume: a **20 GB gp3 EBS volume** on AWS, a **Standard SSD Managed Disk** on Azure, or a **Standard Persistent Disk** on GCP.
- **OS** — Since `/etc/os-release` confirms this is Ubuntu 24.04 LTS, all three providers have an official Ubuntu 24.04 machine image in their marketplace, so no custom image build would be needed to migrate it as-is.

## Tools Used
- KillerCoda Playground
- Official AWS, Azure, and GCP documentation
- Git & GitHub
- Markdown for documentation
