class CreateShortcuts < ActiveRecord::Migration
  def change
    create_table :shortcuts do |t|
      t.string :my_link
      t.string :hash_code

      t.timestamps null: false
    end
  end
end
