# Mission Reflection

**1. Why is automation critical when managing hundreds of cloud servers?**
Automation is critical because manual administration on a massive scale is slow, inefficient, and highly prone to human error. In an enterprise environment, configuring hundreds of servers one by one makes consistency impossible to guarantee. Automation ensures that routine tasks like backups, updates, and deployments happen identically and simultaneously across all nodes.

**2. What are the potential dangers of automation?**
While automation removes human forgetfulness, it amplifies human mistakes. If there is a destructive typo inside a script (such as an incorrect directory deletion command) that is scheduled to run on 1,000 servers, the automation will flawlessly and autonomously execute that mistake, potentially wiping out the entire infrastructure in seconds before anyone can stop it.

**3. How did writing a Bash script differ from creating a Docker Compose YAML file (Mission 6)?**
Writing a Bash script is an imperative process—you are writing the exact step-by-step procedures the operating system must execute to achieve a goal. In contrast, creating a Docker Compose YAML file is declarative. With YAML, you define the desired final state of the services, and the Docker engine figures out the underlying steps to build and maintain that state.

**4. Review your entire GitHub repository from Laboratory 1 to 9. How has your understanding of Cloud Computing transformed?**
At the beginning of the semester, I viewed the cloud mostly as remote storage and basic virtual machines. My understanding has transformed into seeing the cloud as a highly programmable, scalable ecosystem. Moving from manual infrastructure deployment to containerized architectures and finally to automated operations has shown me how modern software pipelines are sustained in production.

**5. Which role did you enjoy the most and why?**
I enjoyed the Cloud-Native Engineer and Cloud Data Engineer