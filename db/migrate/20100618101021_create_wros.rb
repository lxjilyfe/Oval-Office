class CreateWros < ActiveRecord::Migration
  def self.up
    create_table :wros do |t|
      t.string :wrono
      t.string :title
      t.date :dateIssued
      t.date :dateRequiredToClose
      t.string :composedBy
      t.string :currentStatus
      t.boolean :open
   
      

      t.timestamps
    end
  end

  def self.down
    drop_table :wros
  end
end
