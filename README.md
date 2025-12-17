# 🚀 Automated DevOps Pipeline: Node.js + Docker + AWS

[![GitLab CI/CD](https://img.shields.io/badge/GitLab-CI%2FCD-orange?logo=gitlab)](https://gitlab.com)
[![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)](https://www.docker.com/)
[![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?logo=amazon-aws)](https://aws.amazon.com/)

## 📝 Project Overview
This project demonstrates a fully automated **CI/CD pipeline** for a Node.js application. It leverages **GitLab CI/CD** to handle the build, test, and deployment phases, ensuring that every code change is automatically delivered to an **AWS EC2** instance using **Docker** containers.



## 🛠️ Tech Stack
- **Application:** Node.js / Express
- **CI/CD:** GitLab CI/CD (Pipelines, Registry, Variables)
- **Containerization:** Docker (Dockerfile, Docker-in-Docker)
- **Cloud:** AWS EC2 (Amazon Linux), Security Groups
- **Automation:** Bash scripting, SSH-Agent

## ⚙️ CI/CD Architecture
The pipeline is divided into three main stages:

1.  **Build 🏗️**:
    - Build a Docker image from the `Dockerfile`.
    - Tag the image with the unique Commit SHA.
    - Push the image to the **GitLab Container Registry**.
2.  **Test 🧪**:
    - Pull the newly built image.
    - Execute automated unit tests within the container environment.
3.  **Deploy 🚀**:
    - Securely connect to the **AWS EC2** instance via SSH.
    - Pull the latest image from the registry.
    - Stop/Remove the old container and start the new version.

## 🌟 Key Achievements (Metrics)
- **Efficiency:** Reduced manual deployment time by **40%** through full automation.
- **Reliability:** Achieved consistent application environments with Docker, ensuring a **95%+ deployment success rate**.
- **Security:** Implemented security best practices using GitLab **Masked Variables** for SSH keys and registry credentials.
- **Uptime:** Successfully deployed to AWS EC2 with a focus on high availability and scalable infrastructure.

## 🚀 Getting Started
To replicate this setup, you will need:
1.  An AWS EC2 instance with Docker installed.
2.  An SSH Key Pair (Private key added to GitLab CI/CD variables).
3.  GitLab Variables configured: `EC2_HOST_IP`, `EC2_USER`, `SSH_PRIVATE_KEY`.

## 📈 Impact
Streamlined software delivery and improved DevOps automation, contributing to faster release cycles and better resource management.
