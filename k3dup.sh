# usage.
# ./k3dup.sh down
if [ "$1" = "down" ]; then
   k3d cluster delete dev
   # ls /tmp/k3dvol | xargs -I{} rm -rf /tmp/k3dvol/{}
   exit
fi

# usage.
# ./k3dup.sh
mkdir -m 0777 -p /tmp/k3dvol
! k3d cluster get dev >/dev/null 2>&1 && k3d cluster create \
      dev \
      -i 'docker.io/rancher/k3s:v1.23.3-k3s1' \
      --api-port 6550 \
      --volume '/tmp/k3dvol:/var/lib/rancher/k3s/storage/@server:*' \
      --port '8080:80@loadbalancer:*' \
      --port '5432:30432@server:*' \
      -s 1
$(dirname $0)/build-strapi.sh
terraform -chdir=deploy/dev init >/dev/null
terraform -chdir=deploy/dev apply -auto-approve
