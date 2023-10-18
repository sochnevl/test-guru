class CreateTestsUsersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :tests do |t|
      t.string :status
      t.index [:user_id, :test_id], unique: true
      # t.index [:test_id, :user_id]

      t.timestamps
    end
  end
end
