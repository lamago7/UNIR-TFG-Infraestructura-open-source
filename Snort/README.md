# Snort - Automatización con Ansible

Este directorio contiene playbooks de Ansible diseñados para automatizar tareas de despliegue, configuración y verificación del IDS Snort.

## Estructura del directorio

```plaintext
Snort/
├── inventory.ini
├── install-snort.yml
├── deploy_custom_rules.yml
├── check-snort-status.yml
```

## Descripción de Playbooks

- `inventory.ini` : Lista de hosts gestionados por Ansible para instalación y configuración de Snort.
- `install-snort.yml` : Instala Snort y sus dependencias en sistemas basados en Debian/Ubuntu.
- `deploy_custom_rules.yml` : Copia reglas personalizadas al directorio de Snort, las añade a la configuración y reinicia el servicio.
- `check-snort-status.yml` : Verifica si el servicio Snort está activo y funcionando correctamente.

## Requisitos

- Sistema basado en Linux (Debian/Ubuntu).
- Acceso SSH al host con permisos de administrador.
- Ansible instalado en el nodo de control.
- Snort puede instalarse automáticamente o estar preinstalado.

## Uso

```bash
ansible-playbook -i inventory.ini install-snort.yml
```

> Cambia `install-snort.yml` por el playbook deseado.

## Autor

**Trabajo de Fin de Grado** - UNIR  
**Alumno:** LMG  
**Curso:** Adaptación al Grado en Ingeniería Informática
