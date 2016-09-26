* TO PRESENT

1. Dockerize our node app
  - Use small distro
  - Control the node version ourselves
  - Support environment variables

2. Deploy our image to a Docker repo

3. Create ECS Cluster
  - Define each ECS parts

4. Create VPC
5. Create Auto-Scaling Group
  AMI -> ecs-optimized
  Public IP -> Enabled
5. Create ELB

7. Manually deploy app
  -> Docker build
  -> Docker push
  -> Update Service

8. One-click deploys
   -> ./deploy.sh
   -> circleci
