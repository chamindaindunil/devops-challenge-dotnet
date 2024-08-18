# Sales API

This repository contains the Sales API project, which is built using .NET 5 and follows a CI/CD pipeline on Azure DevOps. The pipeline is integrated with GitHub and includes the following stages:

	•	Build: Compiles the project and runs unit tests.
	•	Unit Test: Executes all unit tests to ensure the code is functioning as expected.
	•	Dependency Vulnerability Check: Analyzes the project for any security vulnerabilities in dependencies.
	•	Code Quality Check: Performs static code analysis using SonarCloud.
	•	Docker Build & Push: Builds a Docker image and pushes it to Azure Container Registry (ACR).

## Prerequisites

	•	Azure DevOps Account: Ensure you have access to an Azure DevOps account.
	•	Azure Container Registry (ACR): ACR is required for storing Docker images.
	•	SonarCloud Account: SonarCloud is used for code quality analysis.

# Setup

## Service Connections

	1.	Azure Container Registry (ACR):
	    •	Create a service connection in Azure DevOps to allow the pipeline to push Docker images to ACR.

	2.	SonarCloud:
	    •	Create a service connection in Azure DevOps for SonarCloud to enable code quality checks.

## Environment Variables

Before starting the integration tests, ensure that the SALES_API_ENDPOINT environment variable is set. This variable points to the API endpoint required for the tests.

# CI/CD Pipeline

The Azure DevOps pipeline is defined in the azure-pipelines.yml file and includes the following stages:

	1.	Build & Test Stage:
	    •	Restores dependencies, builds the project, runs unit tests, Scans the project for known vulnerabilities in dependencies, Analyzes the code using SonarCloud.
	2.	Docker Build & Push Stage:
	    •	Builds a Docker image and pushes it to the Azure Container Registry.