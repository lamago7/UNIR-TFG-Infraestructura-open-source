#!/bin/bash
# Script automatizado para desplegar DevStack en Ubuntu

# VARIABLES
USERNAME="stack"
HOST_IP=$(hostname -I | awk '{print $1}') # Detecta la IP principal

echo "[INFO] IP detectada para HOST_IP: $HOST_IP"
sleep 2

# 1. Crear usuario stack
echo "[INFO] Creando usuario $USERNAME..."
sudo adduser --disabled-password --gecos "" $USERNAME
sudo usermod -aG sudo $USERNAME

# 2. Permitir sudo sin contraseña
echo "[INFO] Configurando permisos sudo sin contraseña..."
echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USERNAME

# 3. Clonar DevStack
echo "[INFO] Clonando DevStack..."
sudo -u $USERNAME git clone https://opendev.org/openstack/devstack /home/$USERNAME/devstack

# 4. Crear archivo local.conf
echo "[INFO] Generando archivo local.conf..."
cat <<EOF | sudo -u $USERNAME tee /home/$USERNAME/devstack/local.conf
[[local|localrc]]
ADMIN_PASSWORD=stack
DATABASE_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD
HOST_IP=$HOST_IP
RECLONE=True
disable_service etcd
EOF

# 5. Iniciar la instalación
echo "[INFO] Iniciando instalación de DevStack..."
sudo -u $USERNAME bash -c "cd /home/$USERNAME/devstack && ./stack.sh"
