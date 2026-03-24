#!/bin/sh
set -eufo pipefail

echo "📦 Instalando pacotes comuns..."
./install-common.sh

echo "🏠 Instalando pacotes pessoais..."
./pkg/install-webapp-pessoal.sh

echo "✅ Instalação concluída!"
