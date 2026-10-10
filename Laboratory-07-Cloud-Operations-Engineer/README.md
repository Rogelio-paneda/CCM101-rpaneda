# Laboratory Activity 7: The Cloud Operations Engineer

## Mission Overview
This laboratory activity simulates the role of a Cloud Operations / Site Reliability Engineer (SRE) at CloudNova Technologies. The mission involves performing a baseline system health check on a Linux host, deploying a containerized Nginx web server, generating simulated web traffic and error conditions, and analyzing real-time performance metrics and application logs to ensure system health and readiness for production traffic surges.

## Objectives
* Utilize native Linux CLI tools (`free`, `df`, `top`) to establish host resource baselines.
* Deploy a web container and observe resource utilization using Docker metrics.
* Simulate web traffic and extract container access logs for troubleshooting.
* Translate raw terminal data into structured technical Markdown reports.
* Maintain an organized GitHub Cloud Computing portfolio repository.

## Monitoring Commands Executed
* `free -h` - Checked total and available system memory (RAM).
* `df -h /` - Analyzed root partition disk space availability.
* `top` - Observed real-time host process activity and CPU usage.
* `docker run -d --name client-website -p 8080:80 nginx` - Deployed containerized Nginx web server.
* `curl http://localhost:8080` - Generated HTTP web traffic.
* `docker logs client-website` - Extracted container access and error logs.
* `docker stats client-website` - Streamed real-time container CPU, Memory, and Network I/O metrics.

## Skills Learned
* Host and container observability techniques.
* System baseline establishment and capacity planning.
* Log analysis and HTTP status code troubleshooting (200 OK vs 404 Not Found).
* Real-time resource usage monitoring in containerized environments.