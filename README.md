# Enterprise Infrastructure Lab (EIL)

Enterprise Infrastructure Lab (EIL) es un homelab orientado a la administración de sistemas y DevOps. El proyecto consiste en construir una infraestructura modular y reproducible utilizando **Debian 13 (WSL2)** y **Docker Compose**, siguiendo buenas prácticas de seguridad, automatización y documentación.

El objetivo es simular un entorno empresarial que pueda migrarse fácilmente a un servidor físico o a **Proxmox VE** sin modificar la arquitectura.

---

## Objetivos

- Administrar servidores Linux.
- Desplegar servicios con Docker Compose.
- Automatizar tareas con Bash y Ansible.
- Implementar monitorización y observabilidad.
- Aplicar medidas básicas de seguridad.
- Gestionar copias de seguridad y restauración.
- Mantener una documentación clara y actualizada.

---

## Arquitectura

La infraestructura sigue los siguientes principios:

- Configuración basada en archivos.
- Servicios desacoplados.
- Separación entre datos y configuración.
- Backups automatizados.
- Infraestructura reproducible.
- Preparada para producción.

---

## Roadmap

- [x] Diseño inicial del proyecto
- [ ] Preparación del servidor Debian
- [ ] Instalación y configuración de Docker
- [ ] Infraestructura base (Portainer, Homepage, Uptime Kuma, Dozzle)
- [ ] Reverse Proxy con Nginx Proxy Manager
- [ ] Bases de datos (PostgreSQL y Redis)
- [ ] Servicios corporativos (Nextcloud, Vaultwarden y Gitea)
- [ ] Monitorización (Prometheus, Grafana, Loki...)
- [ ] Automatización con Bash y Ansible
- [ ] Hardening y seguridad
- [ ] Documentación completa
- [ ] Migración a servidor dedicado o Proxmox

---

## Estructura del proyecto

```text
homelab/
├── backups/
├── compose/
├── data/
├── docs/
├── scripts/
└── README.md
```

---

## Tecnologías

- Debian 13
- WSL2
- Docker & Docker Compose
- Bash
- Ansible
- Git
- Nginx Proxy Manager
- Prometheus & Grafana
- PostgreSQL
- Redis

---

## Estado del proyecto

> En desarrollo.

Este repositorio documenta la evolución del laboratorio desde su diseño inicial hasta una infraestructura lista para producción y fácilmente reproducible.
