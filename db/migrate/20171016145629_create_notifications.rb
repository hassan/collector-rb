class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :message_type
      t.string :message_id
      t.string :topic_arn
      t.string :subject
      t.text :message
      t.string :timestamp
      t.string :signature_version
      t.text :signature
      t.string :signing_cert_url
      t.string :unsubscribe_url

      t.timestamps
    end
  end
end
