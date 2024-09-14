# ==================================================================
#         This Shell File Provisions & Deploys Both Microservices         
# ==================================================================
#            RUN - ./scripts/main.sh  (in Git Bash)             
# ------------------------------------------------------------------

# ./scripts/provision-infrastructure.sh # Provision Azure Infrastructure Using Terraform

# ./scripts/configure-infrastructure.sh # Set Infrastructure Permissions

./scripts/build-image.sh # Build Images 

./scripts/push-image.sh # Push Images to Azure

./scripts/decrypt-secret.sh # Decrypt Kubeconfig credentials to communicate and manage cluster from terminal

./scripts/deploy.sh # Deploy Images on Kubernetes Cluster

# ./scripts/display-status-launch-browser.sh # Display Relevant Information and Open Images in Browser

