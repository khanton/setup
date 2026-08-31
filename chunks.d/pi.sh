#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

sudo apt install nodejs -y

sudo npm install -g --ignore-scripts @earendil-works/pi-coding-agent

PLUGINS='npm:pi-mcp-adapter npm:pi-alibaba-models npm:@pi-lab/webfetch npm:@juicesharp/rpiv-ask-user-question npm:pi-ayu-themes npm:@llblab/pi-codex-usage npm:@ff-labs/pi-fff npm:pi-agents'

for plugin in ${PLUGINS}; do
  pi install $plugin
done

cat >~/.tmux.conf <<'EOF'
set -g extended-keys on
set -g extended-keys-format csi-u
EOF
