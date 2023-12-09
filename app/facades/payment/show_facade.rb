module Facades
  module Payment
    class ShowFacade
      def initialize(id:)
        @payment = Payments::Payment.find(id)
      end

      def show
        customer = Customer::ShowFacade.new(id: @payment.customer_id).show.except(:id)
        @payment.serializable_hash.symbolize_keys.slice(:id,:customer_id,:amount,:currency,:timestamp).merge(customer)
      end
    end
  end
end