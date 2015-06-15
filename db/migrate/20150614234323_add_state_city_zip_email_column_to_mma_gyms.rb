class AddStateCityZipEmailColumnToMmaGyms < ActiveRecord::Migration
  def change
    add_column :mma_gyms, :state, :string
    add_column :mma_gyms, :city, :string
    add_column :mma_gyms, :zip, :string
    add_column :mma_gyms, :email, :string
  end
end
