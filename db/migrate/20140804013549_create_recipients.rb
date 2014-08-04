class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :user_id

      t.timestamps
    end
    add_index :recipients, :user_id
  end
end

