# ===============================================================
#         This Shell File Deletes Both Microservices         
# ===============================================================
#            RUN - ./scripts/delete.sh  (in Git Bash)             
# ---------------------------------------------------------------

# Terminal text output colour variables: purple & default
p='\033[0;35m'
d='\033[0m'

echo -e "\n${p}Delete Kubernetes Deployments annd Services${d}\n"
kubectl delete -f scripts/kubernetes/deployment.yaml

echo -e "\n${p}Assigning Owner Permission To Delete Resources...${d}\n"
az role assignment create --assignee odl_user_1402445@cloudlabs4deakin.onmicrosoft.com --role "Owner" --scope subscriptions/a9812c10-79b1-4c84-a39f-4e5793746024/resourceGroups/djb993rg

echo -e "\n${p}Refreshing to Update Permission Status${d}\n"
az logout
az login

echo -e "\n${p}Navigate to Terraform Directory${d}\n"
cd ./terraform
pwd

echo -e "\n${p}Deleting Azure Platform Resources...${d}\n"
terraform destroy -auto-approve

# echo -e "\n${p}Removing Images...${d}\n"
# docker rmi djb993cr.azurecr.io/book-catalog-service:1
# docker rmi djb993cr.azurecr.io/inventory-management-service:1