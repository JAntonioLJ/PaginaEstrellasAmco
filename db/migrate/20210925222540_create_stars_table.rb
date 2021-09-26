class CreateStarsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.float :distance
      t.integer :travel_time
    end
  end
end
