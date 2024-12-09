# Déploiement d'un serveur GitLab avec Ansible

Ce projet vise à déployer un serveur GitLab de manière automatisée en utilisant Ansible. Le processus comprend la configuration d'une machine virtuelle pour GitLab, l'installation et la configuration automatisées de ce dernier, ainsi que la mise en place d'une base de données PostgreSQL.

## Table des matières

- [Prérequis](#prérequis)
- [Architecture](#architecture)
- [Étapes de déploiement](#étapes-de-déploiement)
- [Structure du projet Ansible](#structure-du-projet-ansible)
- [Utilisation](#utilisation)
- [Vérification](#vérification)

---

## Prérequis

Avant de commencer, assurez-vous d'avoir :

- Une machine virtuelle (VM) configurée avec une distribution Linux (Ubuntu Server, Debian ou Rocky Linux).
- Ansible installé sur la machine de contrôle/maître.
- Un accès SSH configuré entre la machine de contrôle et les VMs cibles.
- Les ports nécessaires ouverts sur le pare-feu (par exemple, port 80 pour HTTP et 22 pour SSH).

---

## Architecture

Ce projet déploie :
- Une VM pour héberger le serveur GitLab.
- Une VM optionnelle pour une base de données PostgreSQL (selon vos besoins).

---

## Étapes de déploiement

1. **Configurer les machines virtuelles :**
   - Créez deux VMs (une pour GitLab, une pour PostgreSQL si nécessaire).
   - Configurez l'accès SSH entre votre machine de contrôle et les VMs.

2. **Installer Ansible :**
   - Installez Ansible sur la machine de contrôle via un gestionnaire de paquets (par exemple, `sudo apt install ansible`).

3. **Développer les rôles Ansible :**
   - **Rôle `common` :** Configure les dépendances de base (mise à jour des paquets, installation des outils essentiels, etc.).
   - **Rôle `bdd` :** Déploie PostgreSQL et configure les bases de données requises (`all`, `dev`, `stage`, `prod`).
   - **Rôle `gitlab` :** Installe et configure GitLab en utilisant des variables Ansible.

---

## Structure du projet Ansible

Votre projet Ansible doit suivre cette structure :

```plaintext
ansible-project/
├── site.yml
├── inventory.yml
├── roles/
│   ├── common/
│   │   └── tasks/
│   │       └── main.yml
│   ├── gitlab/
│   │   └── tasks/
│   │       └── main.yml
│   └── bdd/
│       ├── tasks/
│       │   └── main.yml
│       └── handlers/
│           └── main.yml
```

---

## Utilisation

1. Clonez le dépôt du projet sur votre machine de contrôle.
2. Modifiez le fichier `inventory.yml` pour spécifier les VMs cibles.
3. Lancez le playbook avec :
   ```bash
   ansible-playbook site.yml  -i inventory.yml 
   ```

---

## Vérification

Pour confirmer que GitLab fonctionne :
- Exécutez : `ps aux | grep gitlab`
- Accédez à l'interface web de GitLab à l'adresse IP ou au domaine configuré.

![image](https://github.com/user-attachments/assets/d43dcf44-4261-45e0-9232-3515529023fc)

![image](https://github.com/user-attachments/assets/68d8b636-0178-45cb-a8cb-f82a35eb8dc1)

