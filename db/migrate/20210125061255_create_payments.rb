class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :transaction_reference_number
      t.boolean :status
      t.bigint :fare_without_tax
      t.integer :tax_percent
      t.bigint :total_fare
      t.timestamps
    end
  end
end
