class Project < ActiveRecord::Base
  has_many :profiles_projects
  has_many :profiles, through: :profiles_projects

  has_many :charts
end
