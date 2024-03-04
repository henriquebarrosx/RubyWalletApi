class CreatePaymentFrequencies < ActiveRecord::Migration[7.1]
  def change
    create_table :payment_frequencies do |t|
      t.integer :times

      t.timestamps
    end
  end
end
