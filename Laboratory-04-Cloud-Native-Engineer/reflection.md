# Mission Reflection

The performance contrast between traditional Virtual Machines and Docker containers becomes immediately obvious when deploying a web service. Provisioning a standard Virtual Machine requires configuring virtual hardware, downloading an ISO image, waiting several minutes for OS installation, and stepping through a full boot cycle. In contrast, pulling and running an Nginx container on KillerCoda took less than three seconds. Because containers share the underlying host OS kernel instead of initializing a separate operating system, deployment feels instantaneous and vastly reduces idle memory overhead.

Port mapping (`-p 8080:80`) is essential because containers run inside isolated network namespaces by default. The Nginx server process listens internally on port 80, which is isolated from the host machine. Mapping host port 8080 to container port 80 establishes a network bridge, ensuring external web traffic arriving at the host system is properly forwarded into the containerized process.

When executing `docker rm`, any uncommitted data written to the container's writable storage layer is permanently deleted. Containers are designed to be stateless and disposable; long-term data persistence requires attaching external storage volumes to avoid data loss upon container deletion.

Containerization fundamentally transforms DevOps by resolving the classic "works on my machine" developer problem. By bundling application code alongside its exact runtime dependencies, configuration files, and system libraries into a single container image, software developers can pass identical environments directly to IT operations. Operations teams can then deploy these containers predictably across development, testing, and production servers.

Maintaining this GitHub portfolio provides clear, structured proof of hands-on technical skills. Documenting CLI commands, architectural differences, and lifecycle operations transforms academic coursework into a practical showcase of cloud engineering capabilities.
