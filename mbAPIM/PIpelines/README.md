# Pipelines

Pipelines for CI/CD of the Azure API Management instance

- **Build**: build pipelines

**mbapim-APIM-build** : pipeline to prepare APIM instance deployment assets and store them into pipeline artifactory

- Optional: run script for an optional preparation
- Optional: prepare deployment assets for upload to pipeline artifactory (check for compliance etc.)
- Mandatory: publish artifacts to the **drop** pipelines artifactory

**mbAPIM-API-collector** : pipeline to collect stable API assets from isolated API Dev projects and store them into pipeline artifacts ready for deployment

- Optional: run script for an optional preparation
- Mandatory: copy and prepare deployment scripts for upload to pipeline artifactory
- Mandatory: download build artifacts from **Sensor API** project
- Mandatory: download build artifacts from **Invoice API** project
- Optional: validate the downloaded artifacts (check for possible collisions, complicance violation etc.)
- Mandatory: publish artifacts to the **drop** pipelines artifactory

- **Release**: release pipelines

**Release-APIM**: release pipeline for APIM deployment (instance rollout, no APIs)

**Release-API**: release pipeline for API CI/CD (no instance changes, APIs and products only)