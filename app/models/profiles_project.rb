class ProfilesProject < ActiveRecord::Base
  belongs_to :profile
  belongs_to :project
end
