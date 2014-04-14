class AddIndexToEquipmentSerial < ActiveRecord::Migration
  def change
  	add_index :equipment, :serial, unique: true
  end
end
