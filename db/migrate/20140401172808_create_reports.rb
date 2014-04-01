class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :equipment_id
      t.string :subject
      t.date :idate
      t.time :itame
      t.string :rname
      t.string :location
      t.string :cname
      t.text :descript
      t.string :status

      t.timestamps
    end
  end
end
