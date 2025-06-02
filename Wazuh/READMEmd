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

## Uso

1. Modifica `inventory.ini` con tus hosts de destino.
2. Ejecuta el playbook correspondiente a la tarea deseada. Por ejemplo:

```bash
ansible-playbook -i inventory.ini agentes/install-register-agent.yml
```

## Requisitos

- Ansible
- Acceso SSH a los nodos
- Wazuh Manager configurado
