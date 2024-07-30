# Terminal text output colour variables: purple & default
p='\033[0;35m' 
d='\033[0m' 

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo -e "${p}\nPushing Images...${d}\n"
echo -e "${p}\n$CONTAINER_REGISTRY${d}\n"
echo -e "${p}\n$VERSION${d}\n"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

docker push $CONTAINER_REGISTRY.azurecr.io/book-catalog-service:$VERSION
docker push $CONTAINER_REGISTRY.azurecr.io/inventory-management-service:$VERSION