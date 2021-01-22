class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name, null: false
      t.string :port_code, null: false
      t.string :city
      t.string :state
      t.integer :country_id
      t.timestamps
      t.index ["port_code"], name: "index_airports_on_port_code"
    end
  end
end
