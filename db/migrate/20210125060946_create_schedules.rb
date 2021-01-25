class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.bigint :user_id, null: false
      t.bigint :plane_id, null: false
      t.integer :from_id, null: false
      t.integer :to_id, null: false
      t.bigint :payment_id, null: false
      t.string :coupon_code
      t.boolean :opt_insurance
      t.datetime :schedule_date
      t.string :pnr, null: false
      t.string :assigned_seat_number
      t.boolean :booking_status
      t.timestamps
    end
  end
end
