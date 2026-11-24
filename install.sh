#!/bin/bash
set -e

REPO="fabricioreis86/tailscale-toggle-xfce"
DEB_URL="https://github.com"
TMP_DEB="/tmp/tailscale-toggle_1.1_all.deb"

echo "Baixando a versão mais recente do Tailscale Toggle..."
curl -fsSL "$DEB_URL" -o "$TMP_DEB"

echo "Instalando o pacote no sistema..."
sudo apt update -qq
sudo apt install -y "$TMP_DEB"

rm -f "$TMP_DEB"
echo "Instalação concluída! Adicione o 'Monitor Genérico' ao painel do XFCE com o comando: tailscale-toggle"
