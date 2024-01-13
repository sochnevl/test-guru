class CreateGists < ActiveRecord::Migration[6.1]
  def change
    create_table :gists do |t|
      t.references :question, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :url, null: false

      t.timestamps
    end
  end
end
