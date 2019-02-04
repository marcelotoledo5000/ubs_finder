class CreateUbs < ActiveRecord::Migration[5.2]
  def change
    create_table :ubs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.integer :size
      t.integer :adaptation_for_seniors
      t.integer :medical_equipment
      t.integer :medicine
      # Changed here to use postgres_copy
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
