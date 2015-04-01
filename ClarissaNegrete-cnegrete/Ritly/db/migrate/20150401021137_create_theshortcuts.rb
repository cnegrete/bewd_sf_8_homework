class CreateTheshortcuts < ActiveRecord::Migration
  def change
    create_table :theshortcuts do |t|
      t.string :my_link
      t.string :hash_code

      t.timestamps null: false
    end
  end
end
