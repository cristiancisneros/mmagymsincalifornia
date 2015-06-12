class CreateMmaGyms < ActiveRecord::Migration
  def change
    create_table :mma_gyms do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps null: false
    end
  end
end
