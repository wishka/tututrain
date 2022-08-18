class AddReferencesToRoutes < ActiveRecord::Migration[7.0]
  def change
    add_reference :routes, :train, null: false, foreign_key: true
  end
end
