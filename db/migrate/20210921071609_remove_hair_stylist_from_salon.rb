class RemoveHairStylistFromSalon < ActiveRecord::Migration[6.1]
  def change
    remove_column :salons, :hair_stylist, :string
  end
end
