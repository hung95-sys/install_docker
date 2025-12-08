🚀 Cài Docker trên Proxmox LXC (Ubuntu 24.04)

Tài liệu này hướng dẫn cách cài đặt Docker bên trong LXC Container Proxmox chạy Ubuntu 24.04, sử dụng script tự động bên dưới.

📌 Cài Docker (bằng script auto)

Chạy lệnh:

wget https://raw.githubusercontent.com/hung95-sys/install_docker/main/install_docker.sh && \
sed -i -e 's/\r$//' install_docker.sh && \
chmod u+x install_docker.sh && \
./install_docker.sh

📌 Kiểm tra Docker sau khi cài

Kiểm tra phiên bản:

docker --version
docker compose version
systemctl status docker


Kiểm tra bằng container test:

docker run --rm alpine echo "OK"


Kết quả mong đợi:

OK
