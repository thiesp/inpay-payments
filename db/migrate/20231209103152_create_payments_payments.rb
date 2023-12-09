class CreatePaymentsPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments_payments do |t|
      t.bigint :customer_id
      t.decimal :amount, precision: 10, scale: 2
      t.string :currency
      t.datetime :timestamp
      
      t.timestamps
    end
  end
end
