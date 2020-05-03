class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :category
      t.string :label
      t.integer :amount
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :to_dos, [:user_id, :created_at]
  end
end
