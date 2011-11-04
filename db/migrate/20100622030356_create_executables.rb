class CreateExecutables < ActiveRecord::Migration
  def self.up
    create_table :executables do |t|
      t.string :title
      t.text :description
      t.string :source
      t.string :flightNo
      t.string :dip
      t.string :da
      t.date :dateIssued
      t.date :dateRequiredToClose
      t.date :dateClosed
      t.text :addition

      t.timestamps
    end
  end

  def self.down
    drop_table :executables
  end
end
