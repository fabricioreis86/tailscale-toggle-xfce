#!/bin/bash
set -e
mkdir -p build
dpkg-deb --build . build/tailscale-toggle_1.1_all.deb
echo "Pacote gerado em: build/tailscale-toggle_1.1_all.deb"
