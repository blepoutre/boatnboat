class AddAddressToBoats < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :address, :string
  end
end
