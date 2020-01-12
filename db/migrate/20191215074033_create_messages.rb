class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :image
      t.integer :user_id
      t.integer :group_id
      t.references :user,foreign_key: true
      t.references :group,foreign_key: true
      t.timestamps
    end
  end
end
