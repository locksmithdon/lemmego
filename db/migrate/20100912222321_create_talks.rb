class CreateTalks < ActiveRecord::Migration
  def self.up
    create_table :talks do |t|
      t.string :title
      t.text :abstract
      t.string :level
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :talks
  end
end
