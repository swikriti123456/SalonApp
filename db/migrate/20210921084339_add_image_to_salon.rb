class AddImageToSalon < ActiveRecord::Migration[6.1]
  def change
    add_column :salons, :salon_image , :string
  end
end
