class CreateSeatSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :seat_settings do |t|
      t.bigint "plane_model_id", null: false
      t.integer "number_of_seats_per_row"
      t.integer "class_title_id"
      t.integer "rows_count"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["plane_model_id"], name: "index_seat_settings_on_plane_model_id"
      t.timestamps
    end
  end
end
