#!/bin/bash
# VM 내부에서 실행될 MicroStack 자동 설치 스크립트
# --------------------------------------------------

# 스크립트 실행 중 오류 발생 시 즉시 중단
set -e

echo ">>> [Step 1/4] Updating system packages..."
sudo apt-get update && sudo apt-get upgrade -y

echo ">>> [Step 2/4] Installing MicroStack Snap package..."
# --beta 채널을 사용해 최신 안정적인 버전을 설치
sudo snap install microstack --beta

echo ">>> [Step 3/4] Initializing MicroStack (This may take several minutes)..."
# --auto와 --control 옵션으로 All-in-One 노드를 자동으로 구성
sudo microstack init --auto --control

echo ">>> [Step 4/4] Waiting for all services to be ready..."
# 모든 서비스가 활성화될 때까지 대기
sudo microstack status --wait

echo "✅ [SUCCESS] MicroStack installation and initialization complete."
echo "You can now access the Horizon dashboard from your host machine."
