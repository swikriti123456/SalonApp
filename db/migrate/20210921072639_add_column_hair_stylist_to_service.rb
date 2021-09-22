class AddColumnHairStylistToService < ActiveRecord::Migration[6.1]
  def change
    add_column :services , :hair_stylist, :string
  end
end
