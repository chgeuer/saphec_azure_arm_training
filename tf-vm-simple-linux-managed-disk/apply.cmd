REM terraform init

set AZURE_PACKER_SUBSCRIPTION_ID=724467b5-bee4-484b-bf13-d6a5505d2b51
set AZURE_PACKER_TENANTID=chgeuerfte.onmicrosoft.com

terraform apply ^
   -var "azure_tenant_id=%AAD_TENANT_ID%" ^
   -var "azure_subscription_id=%AZURE_SUBSCRIPTION_ID%" ^
   -var "azure_client_id=%AZURE_PACKER_APPID%" ^
   -var "azure_client_secret=%AZURE_PACKER_PASSWORD%" 
