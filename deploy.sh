GOOGLE_PROJECT_ID=$PROJECT_ID

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/barkbarkapi \
  --project=$GOOGLE_PROJECT_ID \
  --substitutions=_DEFAULT_LOGS_BUCKET_BEHAVIOR=REGIONAL_USER_OWNED_BUCKET

gcloud beta run deploy barkbark-api \
  --image gcr.io/$GOOGLE_PROJECT_ID/barkbarkapi \
  --platform managed \
  --region us-central1 \
  --project=$GOOGLE_PROJECT_ID
