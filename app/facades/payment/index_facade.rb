module Facades
  module Payment
    class IndexFacade
      require 'byebug'
      def initialize
      end

      def index
        payments = serialize_payments Payments::Payment.all.order(:id)
        customers = Customer::IndexFacade.new.with_ids(customer_ids: payments.map{|payment| payment[:customer_id]}.uniq)
        payments.map{|payment| payment.merge(customers[payment[:customer_id]].except(:id)).except(:customer_id)}
      end

      private

      def serialize_payments(payments)
        payments.map(&:serializable_hash).map(&:symbolize_keys).map{|payment| payment.slice(:id,:customer_id,:amount,:currency,:timestamp)}
      end
    end
  end
end