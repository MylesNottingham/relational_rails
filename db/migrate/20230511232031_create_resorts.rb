class CreateResorts < ActiveRecord::Migration[7.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.integer :max_capacity
      t.boolean :open_for_season

      t.timestamps
    end
  end
end
