class CreateProfilesProjects < ActiveRecord::Migration
  def change
    create_table :profiles_projects do |t|
      t.integer :profile_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end