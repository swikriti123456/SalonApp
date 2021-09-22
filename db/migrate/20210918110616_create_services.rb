class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service_type
      t.decimal :price
      t.string :working_hr

      t.timestamps
    end
  end
end
