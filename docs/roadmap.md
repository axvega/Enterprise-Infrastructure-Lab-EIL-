# Enterprise Infrastructure Lab (EIL)

## Descripción

El **Enterprise Infrastructure Lab (EIL)** es un laboratorio de administración de sistemas cuyo objetivo es diseñar, desplegar y mantener una infraestructura empresarial moderna utilizando **Debian 13 sobre WSL2** y **Docker Compose**.

La plataforma estará diseñada para ser completamente reproducible, segura, monitorizada y documentada, permitiendo una futura migración a un servidor dedicado o a un entorno basado en Proxmox VE sin necesidad de rediseñar la arquitectura.

---

# Objetivos

Al finalizar este proyecto se habrán adquirido competencias en:

- Administración de servidores Linux.
- Gestión de Docker y Docker Compose.
- Diseño de arquitecturas modulares.
- Automatización mediante Bash y Ansible.
- Hardening de sistemas Linux.
- Monitorización y observabilidad.
- Gestión de copias de seguridad.
- Documentación técnica.
- Control de versiones con Git.
- Preparación para entornos de producción.

---

# Objetivos de la infraestructura

La infraestructura deberá cumplir los siguientes principios:

- Infraestructura reproducible.
- Configuración mediante archivos.
- Separación entre configuración y datos.
- Servicios desacoplados.
- Restauración sencilla.
- Backups automatizados.
- Monitorización centralizada.
- Seguridad básica aplicada.
- Documentación completa.
- Preparación para migración a producción.

---

# Roadmap

## Fase 0 — Diseño

### Objetivo

Planificar toda la infraestructura antes de comenzar el despliegue.

### Tareas

- [ ] Crear el repositorio Git
- [ ] Diseñar la arquitectura
- [ ] Definir la estructura de directorios
- [ ] Crear el roadmap
- [ ] Diseñar la estrategia de backups
- [ ] Diseñar la estrategia de actualizaciones
- [ ] Crear la documentación inicial

### Entregables

- README
- Arquitectura
- Roadmap
- Estructura del proyecto

---

## Fase 1 — Preparación del servidor

### Objetivo

Preparar Debian como servidor base.

### Tareas

- [ ] Actualizar el sistema
- [ ] Crear estructura de directorios
- [ ] Configurar SSH
- [ ] Crear usuarios
- [ ] Configurar grupos y permisos
- [ ] Configurar sudo
- [ ] Configurar journald
- [ ] Configurar logs
- [ ] Instalar herramientas básicas

### Competencias

- Linux
- Usuarios
- Permisos
- Systemd

---

## Fase 2 — Plataforma Docker

### Objetivo

Preparar el entorno de contenedores.

### Tareas

- [ ] Instalar Docker
- [ ] Instalar Docker Compose
- [ ] Crear redes Docker
- [ ] Crear volúmenes
- [ ] Organizar la estructura Compose

---

## Fase 3 — Infraestructura base

### Servicios

- Portainer
- Homepage
- Uptime Kuma
- Dozzle

### Objetivos

- [ ] Administración centralizada
- [ ] Dashboard de servicios
- [ ] Visualización de logs
- [ ] Monitorización básica

---

## Fase 4 — Reverse Proxy

### Servicio

- Nginx Proxy Manager

### Objetivos

- [ ] Reverse Proxy
- [ ] HTTPS
- [ ] Certificados SSL
- [ ] DNS
- [ ] Dominios
- [ ] Redirecciones

---

## Fase 5 — Bases de datos

### Servicios

- PostgreSQL
- Redis

### Objetivos

- [ ] Gestión de usuarios
- [ ] Backups
- [ ] Restauración
- [ ] Ajustes básicos de rendimiento

---

## Fase 6 — Servicios corporativos

### Servicios

- Nextcloud
- Vaultwarden
- Gitea

Cada servicio deberá incluir:

- [ ] Docker Compose
- [ ] Variables de entorno
- [ ] Backup
- [ ] Restore
- [ ] Monitorización
- [ ] Documentación

---

## Fase 7 — Monitorización

### Servicios

- Prometheus
- Grafana
- Node Exporter
- cAdvisor
- Loki

### Dashboards

- [ ] CPU
- [ ] Memoria RAM
- [ ] Disco
- [ ] Docker
- [ ] Red
- [ ] Estado de servicios

---

## Fase 8 — Automatización

### Scripts Bash

- [ ] Backups
- [ ] Restauración
- [ ] Actualizaciones
- [ ] Inventario
- [ ] Limpieza
- [ ] Estado del sistema

### Automatización

- [ ] Cron
- [ ] Systemd Timers

---

## Fase 9 — Seguridad

### Implementación

- [ ] Hardening Linux
- [ ] SSH seguro
- [ ] Firewall
- [ ] Fail2Ban
- [ ] CrowdSec
- [ ] Auditorías con Lynis
- [ ] Escaneo de imágenes con Trivy

---

## Fase 10 — Observabilidad

### Servicios

- Wazuh
- Centralización de logs
- Alertas

### Objetivos

- [ ] Monitorización avanzada
- [ ] Detección de incidentes
- [ ] Análisis de eventos

---

## Fase 11 — Gestión empresarial

### Scripts

- [ ] Inventario del servidor
- [ ] Estado de versiones
- [ ] Espacio disponible
- [ ] Servicios activos
- [ ] Estado Docker
- [ ] Estado de backups
- [ ] Generación de informe HTML o Markdown

---

## Fase 12 — Documentación

Cada servicio deberá disponer de:

- [ ] Objetivo
- [ ] Arquitectura
- [ ] Variables
- [ ] Puertos
- [ ] Dependencias
- [ ] Instalación
- [ ] Actualización
- [ ] Backup
- [ ] Restauración
- [ ] Troubleshooting
- [ ] Incidencias conocidas

---

## Fase 13 — Infraestructura como código

### Objetivo

Automatizar completamente el despliegue mediante Ansible.

### Tareas

- [ ] Crear inventario
- [ ] Crear roles
- [ ] Crear playbooks
- [ ] Automatizar instalación completa

---

## Fase 14 — Migración

### Objetivo

Migrar la infraestructura a un servidor dedicado o Proxmox.

### Procedimiento

- [ ] Instalar Debian o Proxmox
- [ ] Restaurar datos
- [ ] Clonar el repositorio Git
- [ ] Ejecutar playbooks
- [ ] Desplegar servicios
- [ ] Validar funcionamiento

### Objetivo de recuperación

- Tiempo de recuperación inferior a una hora (RTO < 1h)

---

# Retos adicionales

Una vez completado el proyecto principal, se podrán realizar escenarios adicionales para simular tareas habituales en entornos empresariales.

- [ ] Actualizar PostgreSQL sin pérdida de datos
- [ ] Simular un fallo de disco y restaurar desde backup
- [ ] Recuperar un contenedor eliminado
- [ ] Rotar certificados SSL
- [ ] Documentar cambios mediante procedimientos
- [ ] Generar informes mensuales
- [ ] Automatizar comprobaciones de espacio en disco
- [ ] Notificar servicios caídos mediante Telegram
- [ ] Automatizar actualizaciones con rollback

---

# Resultado esperado

Al finalizar el proyecto se dispondrá de una infraestructura:

- Modular.
- Escalable.
- Reproducible.
- Segura.
- Automatizada.
- Monitorizada.
- Documentada.
- Preparada para producción y migración a un servidor dedicado.
