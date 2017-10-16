class NotificationsController < ApplicationController
  ActionController::Parameters.permit_all_parameters = true
  # POST /notifications
  # POST /notifications.json
  def create
    @notification = Notification.new(notification_params)
    logger.info("\n#{@notification.inspect}\n#{notification_params}") unless @notification.save
    render json: '{}', status: :created
  end

  private

    def notification_params
      { message_type: params['Type'],
        message_id: params['MessageId'],
        message: params['Message'],
        topic_arn: params['TopicArn'],
        subject: params['Subject'],
        timestamp: params['Timestamp'],
        signature: params['Signature'],
        signature_version: params['SignatureVersion'],
        signing_cert_url: params['SigningCertURL'],
        unsubscribe_url: params['UnsubscribeURL']
      }
    end
end
