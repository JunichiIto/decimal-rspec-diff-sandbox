class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name
      t.decimal :x_pos, precision: 5, scale: 2
      t.decimal :y_pos, precision: 5, scale: 2

      t.timestamps
    end
  end
end
