class AddSalonIdToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services ,:salon_id,:int 
   
  end
end
