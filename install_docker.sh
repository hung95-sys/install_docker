#!/bin/bash

# Update hệ thống
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl

# Tạo thư mục key nếu chưa có
sudo install -m 0755 -d /etc/apt/keyrings

# Tải Docker GPG key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Thêm Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update lại repo
sudo apt-get update -y

# Cài Docker CE & Compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Khởi động lại dịch vụ
sudo systemctl restart containerd
sudo systemctl restart docker

echo "---- Docker installation completed ----"
docker --version
docker compose version
