class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :current_location
      t.string :plate_spotted
      t.float :points
      t.references :user, index: true

      t.timestamps
    end
  end
end
