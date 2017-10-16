json.extract! notification, :id, :message_type, :message_id, :topic_arn, :subject, :message, :timestamp, :signature_version, :signature, :signing_cert_url, :unsubscribe_url, :created_at, :updated_at
json.url notification_url(notification, format: :json)
