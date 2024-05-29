class AddDescriptionToBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :description, :text
  end
end
