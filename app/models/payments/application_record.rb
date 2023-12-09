module Payments
  class ApplicationRecord < ::ApplicationRecord
    self.abstract_class = true
    establish_connection :development_payments
  end
end