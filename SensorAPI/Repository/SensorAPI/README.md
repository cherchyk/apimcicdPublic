# Introduction 

The HW sensors expose endpoints to collect system data at runtime. The APIs of the endpoints must be dexposed by acorporate APi gateway.

- **Stable**: folder with stable API definitions and satellite assets - ready for deployment
- **Pipelines**: folder with pipelines

# Getting Started
To expose a sensor API follow the guidance:
1. Branch the repository
2. Develop your API using OpenAPI 3.0
3. Stabilize your API
4. Add stable API definition and satellite assets to **Stable** folder

# Build and Test
To prepare your API for deployment on target API gateway:
1. Create PR and let the responsible team members approve it.
2. Merge the PR.
3. The build pipeline starts automatically - check the result and stabilize if necessary.

# Contribute
For more information
- [Azure API Management](https://docs.microsoft.com/en-us/azure/api-management)
- [OpenAPI Spec](https://swagger.io/specification/)
- [SWaggerIO tools](https://swagger.io/tools/)