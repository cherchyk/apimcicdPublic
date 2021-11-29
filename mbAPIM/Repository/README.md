# Introduction 
**mbAPIM**: project to deploy and maintain the Azure API management instance

# Getting Started - repository contents
- **/APIM/mbapim**: folder with deployment stuff for APIM instance (no APIs,  products etc.)
- **/APIM/resources**: required or expected resources
- **/APIM/Scripts**: scripts for deployment tasks
# Build and Test
To deploy APIM instance
1. Run the **mbapim-APIM-build** pipeline
2. Run the **Release-APIM** release

To deploy APIs 
1. Run the **mbapim-APIM-collector** pipeline
2. Run the **Release-API** release

