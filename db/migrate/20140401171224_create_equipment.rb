class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :jcode
      t.integer :serial
      t.date :mdate
      t.string :pnumber

      t.timestamps
    end
  end
end
