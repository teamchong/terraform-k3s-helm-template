BUILDKIT=1 docker build \
    -t strapi-demo:latest \
    strapi-demo/backend && \
    k3d image import strapi-demo:latest -c dev