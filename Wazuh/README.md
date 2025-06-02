# Wazuh - Automatización con Ansible

Este directorio contiene playbooks y archivos necesarios para automatizar la gestión del agente Wazuh mediante Ansible.

## Estructura del directorio

```plaintext
Wazuh/
├── inventory.ini
├── agentes/
│   ├── install-register-agent.yml
│   ├── restart-agent.yml
│   ├── check-wazuh-agent-status.yml
│   └── test-agent-connect.yml
├── configuracion/
│   ├── config-email-alerts.yml
│   ├── syscheck_frequency.yml
│   └── create_dashboard_user.yml
├── reglas/
│   ├── deploy-rule_set.yml
│   └── deploy-custom-rule.yml
├── mantenimiento/
│   └── log-rotate.yml
```


## Descripción de Playbooks

- `inventory.ini` : Lista de hosts gestionados por Ansible para instalar/configurar el agente Wazuh.
- `agentes/install-register-agent.yml` : Instala y registra el agente en el Wazuh Manager.
- `agentes/restart-agent.yml` : Reinicia el agente en los equipos objetivo.
- `agentes/check-wazuh-agent-status.yml` : Verifica si el agente está activo y corriendo.
- `agentes/test-agent-connect.yml` : Prueba la conexión entre el agente y el servidor.
- `configuracion/config-email-alerts.yml` : Configura alertas por correo.
- `configuracion/syscheck_frequency.yml` : Define la frecuencia de chequeos del sistema.
- `configuracion/create_dashboard_user.yml` : Crea usuarios en el dashboard de Wazuh.
- `reglas/deploy-rule_set.yml` : Despliega reglas predeterminadas para detección.
- `reglas/deploy-custom-rule.yml` : Carga reglas personalizadas definidas por el usuario.
- `mantenimiento/log-rotate.yml` : Configura rotación de logs para evitar saturación.

## Requisitos

- Ansible instalado y configurado.
- Acceso SSH a los nodos objetivo.
- Wazuh Manager ya desplegado y operativo.

## Uso

```bash
ansible-playbook -i inventory.ini agentes/install-register-agent.yml
```

> Sustituye el playbook por el que necesites ejecutar según la tarea que vayas a automatizar.

## Autor

**Trabajo de Fin de Grado** - UNIR  
**Alumno:** LMG  
**Curso:** Adaptación al Grado en Ingeniería Informática
