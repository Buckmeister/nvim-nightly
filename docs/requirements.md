# Requirements

The following steps are needed to meet all OS requirements for plugins and
lsp-config referenced in the given configuration files.

## NPM Packages

```
npm -g install \
  @angular/language-server \
  bash-language-server \
  dockerfile-language-server-nodejs \
  neovim \
  typescript-language-server \
  vim-language-server \
  vscode-json-languageserver \
  yaml-language-server

```

## Python Packages

```
pip3 install \
  pynvim
```

## JDT.LS Installation

```
export JDTLS_DIR=/usr/local/share/jdt.ls
export JDTLS_URL=https://download.eclipse.org/jdtls/snapshots/jdt-language-server-latest.tar.gz

curl -fLo "$JDTLS_DIR/jdt-language-server-latest.tar.gz" --create-dirs "$JDTLS_URL"
tar xzf "$JDTLS_DIR/jdt-language-server-latest.tar.gz" --directory="$JDTLS_DIR"
```

## JDT.LS Launch Script

Store as `jdt.ls` somewhere in your `$PATH` and change locations according to
your environment.

```
#!/usr/bin/env bash

JAR=/usr/local/share/jdt.ls/plugins/org.eclipse.equinox.launcher_1.6.0.v20200915-1508.jar
JDTLS_CONFIG=/usr/local/share/jdt.ls/config_mac

"$JAVA_HOME/bin/java" \
  -Declipse.application=org.eclipse.jdt.ls.core.id1 \
  -Dosgi.bundles.defaultStartLevel=4 \
  -Declipse.product=org.eclipse.jdt.ls.core.product \
  -Dlog.protocol=true \
  -Dlog.level=ALL \
  -Xms1g \
  -Xmx2G \
  -jar "$JAR" \
  -configuration "$JDTLS_CONFIG" \
  -data "${1:-$HOME/.tmp}" \
  --add-modules=ALL-SYSTEM \
  --add-opens java.base/java.util=ALL-UNNAMED \
  --add-opens java.base/java.lang=ALL-UNNAMED
```
