class AddSlugToMmaGyms < ActiveRecord::Migration
  def change
    add_column :mma_gyms, :slug, :string
  end
end
