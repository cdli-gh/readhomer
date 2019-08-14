# Container description for building the static website.
#
# Instead of installing node and yarn on your local host,
# you can build in a container and deploy the site with
# something like:
#
#   docker build -t yarn-build .
#   docker run --rm -v ${PWD}:/src yarn-build
#   rsync -av --delete dist/ host:/src/www/scaife

From node

WORKDIR /src
CMD yarn install && yarn build
