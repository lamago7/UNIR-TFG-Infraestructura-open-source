# UNIR-TFG - Infraestructura Open Source con Ansible y OpenStack

Este repositorio contiene los scripts y playbooks utilizados en el Trabajo de Fin de Grado (TFG) para desplegar y automatizar infraestructura utilizando **OpenStack** y **Ansible**.

## Estructura del repositorio

```
OpenStack/
├── scripts/
│   └── deploy_devstack.sh
├── inventory/
│   └── inventory.yml
├── config/
│   ├── clouds.yaml
│   ├── keypair.yml
│   ├── security_groups.yml
│   ├── upload_image.yml
│   ├── instance_metadata.yml
├── crear_redes.yml
└── launch_instance.yml
```

## Descripción de archivos

- `scripts/deploy_devstack.sh`: Script automatizado para desplegar DevStack en una máquina Ubuntu.
- `inventory/inventory.yml`: Inventario local de Ansible.
- `config/clouds.yaml`: Archivo de configuración con las credenciales y conexión a OpenStack.
- `config/keypair.yml`: Crea un par de claves SSH en OpenStack.
- `config/security_groups.yml`: Configura un grupo de seguridad que permite SSH.
- `config/upload_image.yml`: Sube una imagen `.qcow2` a OpenStack Glance.
- `config/instance_metadata.yml`: Lanza una instancia con metadatos personalizados.
- `crear_redes.yml`: Crea red y subred interna en OpenStack.
- `launch_instance.yml`: Lanza una máquina virtual sobre la red definida.

## Requisitos

- OpenStack (DevStack) instalado.
- Ansible configurado.
- Archivo `clouds.yaml` ubicado correctamente o exportado mediante `ANSIBLE_OPENSTACK_CLOUD`.

## Uso

Ejecutar cada playbook con:

```bash
ansible-playbook -i inventory/inventory.yml nombre_playbook.yml
```

## Autor

Trabajo de Fin de Grado - UNIR  
Alumno: [Tu Nombre Aquí]  
Grado en Ingeniería Informática

