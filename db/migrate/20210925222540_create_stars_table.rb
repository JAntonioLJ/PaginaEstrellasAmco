class CreateStarsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :distance
      t.integer :travel_time

      t.timestamps
    end
  end
end
