class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.string :state
      t.integer :x
      t.integer :y
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
