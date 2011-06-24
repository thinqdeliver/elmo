class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :long_name
      t.string :short_name
      t.string :full_name
      t.integer :place_type_id
      t.integer :container_id
      t.decimal :latitude, :precision => 20, :scale => 15
      t.decimal :longitude, :precision => 20, :scale => 15
      t.boolean :is_temp
      t.integer :place_lookup_id

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
