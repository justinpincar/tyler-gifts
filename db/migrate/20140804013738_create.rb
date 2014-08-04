class Create < ActiveRecord::Migration
  def change
    create_table :recipients_traits do |t|
      t.integer :recipient_id
      t.integer :trait_id

      t.timestamps
    end
    add_index :recipients_traits, [:recipient_id, :trait_id]
  end
end

