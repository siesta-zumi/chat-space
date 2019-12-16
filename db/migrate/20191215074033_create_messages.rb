class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :image
      t.reference :user,foreign_key: true
      t.reference :group,foreign_key: true
      t.timestamps
    end
  end
end