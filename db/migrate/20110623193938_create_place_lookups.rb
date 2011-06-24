class CreatePlaceLookups < ActiveRecord::Migration
  def self.up
    create_table :place_lookups do |t|
      t.string :query
      t.string :sugg_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :place_lookups
  end
end
