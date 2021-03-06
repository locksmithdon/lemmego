class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.decimal :cost, :precision => 7, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
