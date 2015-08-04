class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rater_id
      t.integer :target_id
      t.integer :score

      t.timestamps
    end
  end
end
