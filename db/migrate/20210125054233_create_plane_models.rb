class CreatePlaneModels < ActiveRecord::Migration[5.2]
  def change
    create_table :plane_models do |t|
      t.bigint :airline_id, null: false
      t.bigint :plane_id, null: false
      t.timestamps
    end
  end
end
