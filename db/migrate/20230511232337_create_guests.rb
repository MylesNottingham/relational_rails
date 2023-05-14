class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :pass_holder
      t.integer :days_active
      t.references :resort, null: false, foreign_key: true

      t.timestamps
    end
  end
end
