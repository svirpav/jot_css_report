class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :equipment_id
      t.string :subject
      t.datetime :sdate
      t.datetime :fdate
      t.string :rname
      t.string :location
      t.string :cname
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
