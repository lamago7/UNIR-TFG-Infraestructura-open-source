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
│   ├── crear_redes.yml
│   └── launch_instance.yml
```

## Descripción de archivos

- `scripts/deploy_devstack.sh`: Script automatizado para desplegar DevStack en una máquina Ubuntu.
- `inventory/inventory.yml`: Inventario local de Ansible.
- `config/clouds.yaml`: Archivo de configuración con credenciales y conexión a OpenStack.
- `config/keypair.yml`: Playbook para crear un par de claves SSH en OpenStack.
- `config/security_groups.yml`: Configura reglas de seguridad.
- `config/upload_image.yml`: Sube imágenes al entorno de OpenStack.
- `config/instance_metadata.yml`: Metadatos de instancia.
- `config/crear_redes.yml`: Define redes y subredes (LAN y DMZ).
- `config/launch_instance.yml`: Lanza una instancia Cirros en una red específica.

---

### Autor

**Trabajo de Fin de Grado - UNIR**  
**Alumno:** LMG  
**Curso:** Adaptación al Grado en Ingeniería Informática