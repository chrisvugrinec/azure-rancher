#!/bin/bash

echo resourcegroup
read resourcegroup
azure group create $resourcegroup westeurope

#azure group deployment create --name=$resourcegroup-rancher --resource-group=$resourcegroup --template-file="rancher.json" --parameters-file="azuredeploy.parameters.json"
azure group deployment create --name=$resourcegroup-rancher --resource-group=$resourcegroup --template-file="rancher.json" 
