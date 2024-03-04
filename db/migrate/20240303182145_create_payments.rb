class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.float :amount
      t.text :description
      t.boolean :payed
      t.date :deadline_at
      t.boolean :is_expense
      t.references :payment_category, null: false, foreign_key: true
      t.references :payment_frequency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
