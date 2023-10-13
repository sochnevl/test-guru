class CreateTestPassings < ActiveRecord::Migration[6.1]
  def change
    create_table :test_passings do |t|
      t.string :status
      t.references :user, foreign_key: true, null: false
      t.references :test, foreign_key: true, null: false

      t.timestamps
    end
  end
end
