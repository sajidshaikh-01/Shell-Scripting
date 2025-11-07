#!/bin/bash
if command -v docker &> /dev/null; then
    echo "✅ Docker is installed."
elif command -v podman &> /dev/null; then
    echo "⚙️ Podman is installed instead of Docker."
else
    echo "❌ Neither Docker nor Podman found."
fi
