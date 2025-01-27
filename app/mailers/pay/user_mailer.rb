module Pay
  class UserMailer < ApplicationMailer
    def receipt
      if params[:charge].respond_to? :receipt
        attachments[params[:charge].filename] = params[:charge].receipt
      end

      mail to: to
    end

    def refund
      mail to: to
    end

    def subscription_renewing
      mail to: to
    end

    def payment_action_required
      mail to: to
    end

    private

    def to
      "#{params[:pay_customer].customer_name} <#{params[:pay_customer].email}>"
    end
  end
end
