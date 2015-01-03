class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :date
      t.references :user, index: true

      t.timestamps
    end
    add_index :products, [:user_id, :created_at]
  end
end
