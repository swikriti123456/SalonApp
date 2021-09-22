class CreateSalons < ActiveRecord::Migration[6.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :location
      t.string :hair_stylist

      t.timestamps
    end
  end
end
