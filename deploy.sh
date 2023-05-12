#!/bin/sh

FUNCTION="bigqueryImport"
PROJECT="student-00331"
BUCKET="bq-bucket-json"

# set the gcloud project
gcloud config set project ${PROJECT}

gcloud functions deploy bigqueryImport \
    --runtime python37 \
    --trigger-resource ${BUCKET} \
    --trigger-event google.storage.object.finalize
