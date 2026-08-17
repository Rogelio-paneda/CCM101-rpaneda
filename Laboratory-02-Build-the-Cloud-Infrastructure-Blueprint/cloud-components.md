# Cloud Infrastructure Components

## Compute Resources
**What it is:** The CPU and processing power that runs applications and executes instructions.
**On this server:** 1 vCPU (Intel Xeon E312xx, Sandy Bridge) — the processing unit handling all commands run in this environment.
**Why it matters in cloud computing:** Compute is the core resource cloud providers sell — the "engine" that runs your applications. In real cloud platforms, compute is elastic: you can scale from 1 vCPU to hundreds on demand, unlike a fixed physical machine.

## Storage Resources
**What it is:** Where data, files, and the operating system itself are kept.
**On this server:** A 19GB `/dev/vda1` volume (ext4) for the root filesystem, plus smaller partitions for `/boot` (881M) and `/boot/efi` (105M).
**Why it matters in cloud computing:** Storage needs to persist independently of compute — cloud storage (block, object, or file storage) can be attached, detached, or resized without touching the running server, which is critical for backups, scaling, and disaster recovery.

## Networking Resources
**What it is:** How the server connects to other systems and the internet.
**On this server:** Hostname `ubuntu`, IP address `172.30.1.2` (internal container network), plus a Docker bridge interface at `172.17.0.1`.
**Why it matters in cloud computing:** Networking is what makes a server reachable — it connects compute and storage to users and other services. Cloud networking (VPCs, subnets, firewalls) controls both connectivity and security between resources.

## Operating System
**What it is:** The software layer that manages hardware resources and lets applications run.
**On this server:** Ubuntu 24.04.4 LTS (Noble Numbat), kernel 6.8.0-136-generic.
**Why it matters in cloud computing:** The OS is the interface between raw infrastructure and the applications/tools you actually use. Cloud providers offer many OS choices (Linux distros, Windows Server) as machine images, letting you pick the environment that fits your workload.
