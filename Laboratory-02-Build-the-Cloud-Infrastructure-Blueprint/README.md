# Laboratory Activity 2: Build the Cloud Infrastructure Blueprint

## Mission Overview
This lab simulates the planning phase of a cloud deployment for a small company migrating its services to the cloud. Using a Linux server provisioned through KillerCoda, I investigated the underlying infrastructure, identified its major components, and documented everything as a Cloud Infrastructure Assessment Report — the kind of documentation senior engineers would rely on before deploying real servers.

## Objectives
- Explain the major components of cloud infrastructure
- Investigate hardware and software resources in a Linux environment
- Differentiate compute, storage, networking, and identity resources
- Interpret how cloud infrastructure components relate to one another
- Create professional technical documentation using Markdown
- Continue building a structured GitHub Cloud Computing Portfolio

## Cloud Infrastructure Components
| Component | Purpose |
|---|---|
| Compute | Runs applications and processes instructions (CPU/vCPU) |
| Storage | Persists data, files, and the OS independently of compute |
| Networking | Connects the server to users and other services |
| Operating System | Manages hardware and provides the environment applications run in |

Full details and findings are in `infrastructure-report.md` and `cloud-components.md`.

## Tools Used
- KillerCoda Playground (Ubuntu 24.04 LTS sandbox)
- Git & GitHub (CLI and website)
- Markdown for documentation
- draw.io for the architecture diagram

## Linux Commands Executed
| Command | Purpose |
|---|---|
| `cat /etc/os-release` | Checked operating system details |
| `uname -r` | Checked kernel version |
| `lscpu` | Checked CPU model and core count |
| `nproc` | Checked number of CPU cores |
| `free -h` | Checked total and available RAM |
| `df -h` | Checked disk capacity and usage |
| `df -hT` | Checked mounted file systems and their types |
| `hostname` | Checked server hostname |
| `hostname -I` | Checked server IP address |

## Skills Learned
- Investigating a Linux server's hardware and software profile from the command line
- Distinguishing compute, storage, networking, and OS as distinct infrastructure layers
- Mapping equivalent services across AWS, Azure, and GCP
- Using Git (clone, add, commit, push, pull) to manage a technical portfolio
- Writing structured technical documentation in Markdown

## Challenges Encountered
- Resolved a rejected `git push` caused by divergent local/remote branches, using `git pull` with a merge strategy before pushing again
- Corrected a misplaced file that was committed to the repo root instead of the lab folder, using `git mv`
- Adjusted the workflow after a KillerCoda session timeout by re-cloning the repo and verifying which commits had already been pushed
