class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.bigint :user_id, null: false
      t.boolean :email_notification
      t.boolean :sms_notification
      t.text :remarks_on_failure
      t.timestamps
    end
  end
end
