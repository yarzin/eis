class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.integer :project_id
      t.integer :day
      t.string :type

      t.timestamps null: false
    end
  end
end
