class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.bigint :airline_id, null: false
      t.string :origin
      t.string :destination
      t.string :plane_code, null: false
      t.string :status
      t.datetime :plane_date
      t.string :type
      t.timestamps
      t.index ["plane_code"], name: "index_planes_on_plane_code"
    end
  end
end
