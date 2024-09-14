#!/bin/sh

# Decrypt the file
mkdir -p $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
# gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
# --output - kubeconfig.txt.gpg | base64 -d > $HOME/secrets/kubeconfig.txt

cp kubeconfig.txt $HOME/secrets/kubeconfig.txt