# Security Audit Report

**The Principle of Least Privilege (PoLP)**
The Principle of Least Privilege (PoLP) ensures that users, systems, and applications are only granted the absolute minimum level of access necessary to perform their required tasks. In cloud environments, this is vital for limiting the potential blast radius of a security breach, preventing compromised standard accounts from executing unauthorized administrative actions.

**Attack Surface**
The attack surface refers to the total number of exploitable entry points, open ports, or vulnerabilities present on a virtual machine. By turning off unnecessary services and closing unused network ports, administrators can significantly shrink the attack surface, giving malicious actors fewer opportunities to penetrate the server.

**Default Deny Policy**
A Default Deny policy automatically blocks all incoming network traffic unless a specific rule is created to explicitly allow it. This is much safer than attempting to identify and block every individual hacker or malicious IP address, as it guarantees that only trusted, pre-approved connections can ever reach the server.