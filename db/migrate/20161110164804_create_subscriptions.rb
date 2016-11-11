class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :freind_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
