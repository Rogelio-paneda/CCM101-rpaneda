# Types of Cloud Storage Research

## Cloud Storage Comparison

| Storage Type | Description (How does it store data?) | Primary Use Case (What is it best used for?) | Cloud Provider Example |
| :--- | :--- | :--- | :--- |
| **Block Storage** | Splitting data into fixed-sized blocks with unique identifiers. Functions as a raw, unformatted hard drive directly attached to a single server instance. | High-performance transactional databases, operating system boot volumes, virtual machine disks. | AWS Elastic Block Store (EBS) |
| **File Storage** | Storing data hierarchically in files and folders within a shared file system accessible over network protocols like NFS or SMB. | Shared content management, enterprise file shares, legacy application data migration. | AWS Elastic File System (EFS) |
| **Object Storage** | Storing data as self-contained objects with raw data, customizable metadata, and a unique ID within a flat, key-value address space. | Unstructured media files (images, videos), static web assets, massive backups, and data lakes. | AWS Simple Storage Service (S3) |

---

## Client Recommendation: Storing User-Uploaded Images

Object Storage is the ideal solution for your photo-sharing application because it provides flat-structure scalability, cost efficiency, and built-in metadata management. Unlike web server local storage or block storage—where disk space is limited, tightly bound to a single container, and inherently ephemeral—Object Storage decouples your files from compute nodes. This ensures your application can seamlessly store and serve millions of images without running out of disk space or risking data loss during container restarts[cite: 1].