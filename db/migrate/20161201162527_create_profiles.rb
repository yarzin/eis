class CreateProfiles < ActiveRecord::Migration

  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :user_id
      t.date :birthday
      t.text :biography

      t.timestamps null: false
    end
  end
end
