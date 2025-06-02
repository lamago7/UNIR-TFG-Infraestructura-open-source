# pfSense - Automatización con Ansible

Este directorio contiene playbooks de Ansible diseñados para gestionar y automatizar tareas en un firewall pfSense.

## Estructura del directorio

```
pfSense/
├── inventory.ini
├── backup_config.yml
├── config_ruta.yml
├── reglas/
│   ├── ver_reglas.yml
│   ├── add_regla_ping.yml
│   ├── abrir_puerto_http.yml
│   ├── aplicar_reglas.yml
├── red/
│   ├── configurar_interface_em1.yml
│   ├── configurar_dns.yml
├── servicios/
│   └── gestion_servicio.yml
```

## Descripción de Playbooks

- `inventory.ini`: Archivo de inventario de Ansible para conexión SSH con pfSense.
- `backup_config.yml`: Realiza backup de la configuración del sistema pfSense en formato XML.
- `config_ruta.yml`: Añade y verifica rutas estáticas.
- `reglas/ver_reglas.yml`: Muestra las reglas de firewall activas.
- `reglas/add_regla_ping.yml`: Añade regla temporal para permitir ICMP (ping).
- `reglas/abrir_puerto_http.yml`: Abre el puerto 80 (HTTP) en pf.
- `reglas/aplicar_reglas.yml`: Recarga las reglas de firewall (`pfctl -f`).
- `red/configurar_interface_em1.yml`: Configura la IP en una interfaz.
- `red/configurar_dns.yml`: Establece los DNS del sistema.
- `servicios/gestion_servicio.yml`: Permite iniciar o detener servicios en pfSense.

## Requisitos

- Acceso SSH habilitado en pfSense.
- Usuario con permisos administrativos.
- Ansible instalado en el controlador.
- Interpretador shell disponible (`/bin/sh`).

## Uso

```bash
ansible-playbook -i inventory.ini <playbook>.yml
```

## Autor

**Trabajo de Fin de Grado - UNIR**  
**Alumno:** LMG  
**Curso:** Adaptación al Grado en Ingeniería Informática
