# FastAPI Docker Deployment with Terraform

This project demonstrates how to deploy a FastAPI application using Docker containers managed with Terraform. It provides a simple example of building and deploying a FastAPI application in a Docker container.

# Components

## FastAPI Application

The FastAPI application is defined in app/tp-fastapi.py
It consists of a single endpoint at the root (/) that returns a welcome message.

## Terraform Infrastructure Configuration

The Terraform configuration for deploying the Docker container is defined in infra/main.tf.
It uses the Docker provider to build and deploy the Docker container.
The Docker image is built from the Dockerfile located in the app directory.

## Deployment Scripts

deploy_infra.sh: Shell script to initialize Terraform, apply infrastructure changes, and deploy the Docker container.
destroy_infra.sh: Shell script to destroy the deployed infrastructure.

# Usage

## Prerequisites

Docker installed on the local machine.
Terraform CLI installed on the local machine.

## Deployment

Clone the repository to your local machine.
Navigate to the root directory of the project.
Execute the deploy_infra.sh script:

```bash
./deploy_infra.sh
```

This will initialize Terraform, apply infrastructure changes, and deploy the Docker container.

## Accessing the FastAPI Application

Once deployed, the FastAPI application will be accessible at http://localhost:8000.

## Destroying Infrastructure

To destroy the deployed infrastructure, execute the destroy_infra.sh script:

```bash
./destroy_infra.sh
```
