class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.string :city_name
      t.string :state_abbrev
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
