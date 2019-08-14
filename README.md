# CDLI Scaife viewer

[![Build Status](https://travis-ci.org/cdli-gh/scaife.svg?branch=master)](https://travis-ci.org/cdli-gh/scaife)

This is a version of the [Scaife reading environment](https://scaife-viewer.org/)
customized for texts from the [Cuneiform Digital Library Initiative](https://cdli.ucla.edu).

The environment is written using the [VueJS](https://vuejs.org/) javascript
framework and runs in any modern web browser.

## Quickstart

This project uses the [yarn packaging tool](https://yarnpkg.com/)
to manage dependencies and build the static website. Once it's
installed, you can set up the project by running

    yarn install

### Develop

    yarn serve

This does a quick site compilation in debug mode and starts a local
server. The server will detect source changes and rebuild, so edits
will be visible immediately after saving in your editor.

### Deploy

    yarn build

This compiles and minifies the site for production deployment.
Files in the resulting `dist` directory can by copied to a
static file server to publish the reading environment.

For example, to test in a local container, run

    docker run --rm -v $PWD/dist:/usr/share/nginx/html -p 8080:80 nginx

and visit http://localhost:8080/ to test.
Linux users may need to prepend `sudo` and/or add `:Z` to the end of
the volume map argument.

### Report and fix style lints

    yarn lint

### Run unit tests

    yarn test:unit

The project doesn't currently have tests.

### Customize configuration

To serve the viewer somewhere besides the root path of
the website, build with a `vue.config.js` file in the
top-level source directory. For example

```javascript
module.exports = {
  publicPath: '/scaife/',
};
```

See Vuejs.org's [Configuration Reference](https://cli.vuejs.org/config/)
for other options.
