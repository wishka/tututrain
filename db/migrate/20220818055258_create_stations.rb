# frozen_string_literal: true

# Creatind Stations
class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :current_trains

      t.timestamps
    end
  end
end
