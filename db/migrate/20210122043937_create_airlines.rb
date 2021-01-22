class CreateAirlines < ActiveRecord::Migration[5.2]
  def change
    create_table :airlines do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.bigint :airport_id, null: false
      t.timestamps
      t.index ["code"], name: "index_airlines_on_code"
    end
  end
end
