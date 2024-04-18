#!/bin/bash
# Authenticate to Vault
vault login

# Configure auto-snapshot
function configure_snapshots {
    vault write -force sys/storage/raft/snapshot-auto/config/$CONFIG_NAME \
      interval="SNAPSHOT_INTERVAL" \
      retain=SNAPSHOT_RETENTION \
      storage_type="SNAPSHOT_STORAGE_TYPE" \
      azure_container_name="SNAPSHOT_AZURE_CONTAINER_NAME" \
      azure_account_name="SNAPSHOT_AZURE_ACCOUNT_NAME" \
      azure_account_key="SNAPSHOT_AZURE_ACCOUNT_KEY"
    return $?
}

if configure_snapshots; then
    echo "Snapshot configuration successful."
else
    echo "Failed to configure snapshots."
    exit 1
fi