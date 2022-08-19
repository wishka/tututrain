# frozen_string_literal: true

# Creatind Trains
class CreateTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :train_number
      t.string :carriage_type
      t.string :route
      t.string :carriage_list
      t.integer :carriage_max

      t.timestamps
    end
  end
end
