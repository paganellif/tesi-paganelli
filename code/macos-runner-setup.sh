# Download binario ufficiale
sudo curl --output /usr/local/bin/gitlab-runner \
    "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/
    gitlab-runner-darwin-arm64"

# Installazione runner
gitlab-runner install

# Registrazione runner
sudo gitlab-runner register --non-interactive \
  --url "https://gitlab.com/" --registration-token "MY-TOKEN" \
  --executor "shell" --description "macos-runner" --request-concurrency 3\
  --tag-list "macos-m1" --run-untagged="false" --locked="true" \
  --access-level="not_protected" --cache-shared --cache-type="gcs" \
  --cache-gcs-access-id="${CACHE_GCS_ACCESS_ID}" \
  --cache-gcs-private-key="${CACHE_GCS_PRIVATE_KEY}" \
  --cache-gcs-bucket-name="${CACHE_GCS_PRIVATE_NAME}"

# Start Runner
gitlab-runner start