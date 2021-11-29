#
# Thi script performs the deployment of the APIs to the APIM instance
#
Write-Host "***"
Write-Host "Deploy APIs to APIM"
Write-Host "***"
$resourceGroup = "yourRG"
$apimServiceName = "yourServiceName"
$workdir = Get-Location
Write-Host "Executing in "$workdir
Import-Module -Name Az -Force
Write-Host "Get APIM context"
$ApiMgmtContext = New-AzApiManagementContext -ResourceGroupName $resourceGroup -ServiceName $apimServiceName
Write-Host "Import InvoiceAPI"
Import-AzApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "OpenApi" -SpecificationPath "drop\InvoiceAPI\drop\InvoiceAPI.json" -Path "InvoiceAPI" -ApiId "invoice"
Write-Host "Import SensorAPI"
Import-AzApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "OpenApi" -SpecificationPath "drop\SensorAPI\drop\SensorAPI.json" -Path "SensorAPI" -ApiId "sensor"
Import-AzApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "OpenApi" -SpecificationPath "drop\SensorAPI\drop\MicroSensorAPI.json" -Path "MicroSensorAPI" -ApiId "microsensor"
Import-AzApiManagementApi -Context $ApiMgmtContext -SpecificationFormat "OpenApi" -SpecificationPath "drop\SensorAPI\drop\SensorX1API.json" -Path "SensorX1API" -ApiId "sensorx1"



