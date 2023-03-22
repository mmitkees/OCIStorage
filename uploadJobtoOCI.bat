@echo off
setlocal



echo --------------------------------------
echo [ %DATE% %TIME% ]


set OCI_REGION=me-abudhabi-1
set OCI_NAMESPACE=axg4dygrbmkf
set OCI_BUCKET=bucket-20220803-1046


set LOCAL_FOLDER=C:\zebala
set OCI_FOLDER=oci://%OCI_NAMESPACE%.%OCI_REGION%.objectstorage.oraclecloud.com/%OCI_BUCKET%/^
axg4dygrbmkf.compat.objectstorage.me-abudhabi-1.oraclecloud.com
echo Syncing %LOCAL_FOLDER% with %OCI_FOLDER%...

oci os object bulk-upload ^
    --src-dir "%LOCAL_FOLDER%" ^
    --namespace %OCI_NAMESPACE% ^
    --bucket-name %OCI_BUCKET% ^
	--overwrite ^
    --object-prefix "Backup/"


echo Done.
