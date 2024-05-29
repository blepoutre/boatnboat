class AddPicturesToBoat < ActiveRecord::Migration[7.1]
  def change
    add_column :boats, :picture_url, :string
  end
end
