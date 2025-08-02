# 🛠️ Ansible Infrastructure as Code for Proxmox, VMs, LXC, Baremetal & Cloud Images

This project provides an opinionated, modular Infrastructure as Code (IaC) setup using Ansible.  
It is designed to manage and provision a variety of system types in a consistent and automated way:

- 🖥️ **Proxmox Virtual Machines**
- 📦 **LXC Containers** (work in progress)
- 🔧 **Bare-metal Systems**
- ☁️ **Cloud-init based Images (e.g. Ubuntu Server 24.04)**

> ⚠️ This repo is a sanitized version — no real IPs, passwords or secrets included.

---

## 🚀 What You Can Do With This

- Automate the creation and configuration of Proxmox virtual machines
- Deploy LXC containers with predefined templates and network settings (work in progress)
- Prepare and provision bare-metal systems (e.g. using a WebDAV-based file server)
- Customize and deploy cloud images with injected SSH keys, network configs, and Ansible-ready settings
- Reuse components across lab, staging, and production environments

---

## 🔍 Roles & Structure

The playbooks in this repository are split into reusable roles — but an in-depth explanation of their purpose and logic is **intentionally not included here**.

📘 For detailed documentation, usage examples, and role overviews, please visit:  
👉 [https://grepthis.org](https://grepthis.org)

---

## 📦 Example Playbooks

- `create_vm.yml` — create a VM from cloud image
- `create_lxc.yml` — create an LXC container with optional presets (work in progress)
- `build_cloudimage.yml` — customize and prepare a cloud image (e.g. Ubuntu)
- `prepare_baremetal.yml` — configure and bootstrap physical systems via WebDAV-hosted assets

---

## ✅ Requirements

- Ansible 2.15+
- Python 3.x
- Access to a Proxmox VE host (via API or SSH)
- A WebDAV-based file server for bare-metal image delivery (optional)
- Proper SSH key distribution and inventory setup

---

## 🧪 Quick Start

```bash
ansible-playbook playbooks/02_create_cloudimage.yml -i inventories/linux.yml -e target="ubuntu-cloudimage"
```