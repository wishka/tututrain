# frozen_string_literal: true

# Creatind Routes
class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :stations

      t.timestamps
    end
  end
end
