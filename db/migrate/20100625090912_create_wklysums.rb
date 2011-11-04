class CreateWklysums < ActiveRecord::Migration
  def self.up
    create_table :wklysums do |t|
      t.date :dateComposed
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :wklysums
  end
end
