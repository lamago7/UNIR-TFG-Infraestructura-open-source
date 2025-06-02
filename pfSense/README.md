# pfSense - Automatización con Ansible

Este directorio contiene los *playbooks* y archivos de inventario utilizados para automatizar la gestión de **pfSense** mediante **Ansible**.

## Contenido del directorio

- `inventory.ini`: Archivo de inventario con los datos de conexión al firewall pfSense.
- `ver_reglas.yml`: Muestra las reglas activas del firewall (pf).
- `add_regla_ping.yml`: Añade una regla temporal para permitir ICMP (ping).
- `config_ruta.yml`: Añade una ruta estática a la tabla de enrutamiento.
- `backup_config.yml`: Realiza una copia de seguridad del archivo de configuración de pfSense y lo descarga al host controlador.
- `gestion_servicio.yml`: Inicia o detiene servicios en pfSense mediante variables externas.

## Requisitos

- Acceso SSH habilitado en pfSense.
- Usuario con permisos administrativos (por defecto: `admin`).
- Python no es necesario en el host remoto, se utiliza `raw` y se define `ansible_python_interpreter=/bin/sh`.

## Ejecución de los playbooks

Ejecutar cualquier playbook usando el inventario proporcionado:

```bash
ansible-playbook -i inventory.ini nombre_playbook.yml
```

### Ejemplo para ver reglas del firewall:

```bash
ansible-playbook -i inventory.ini ver_reglas.yml
```

### Ejemplo para añadir una ruta estática:

```bash
ansible-playbook -i inventory.ini config_ruta.yml
```

### Ejemplo para iniciar o detener un servicio:

```bash
ansible-playbook -i inventory.ini gestion_servicio.yml --extra-vars "servicio=sshd accion=onestart"
```

## Autor

**Trabajo de Fin de Grado - UNIR**  
**Alumno:** LMG  
**Curso:** Adaptación al Grado en Ingeniería Informática
