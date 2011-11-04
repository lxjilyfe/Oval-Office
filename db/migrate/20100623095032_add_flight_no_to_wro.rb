class AddFlightNoToWro < ActiveRecord::Migration
  def self.up
    add_column :wros, :flightNo, :string
  end

  def self.down
    remove_column :wros, :flightNo
  end
end
