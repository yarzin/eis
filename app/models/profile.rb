class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :profiles_projects
  has_many :projects, through: :profiles_projects

  has_attached_file :avatar, styles: { thumb: ["64x64#", :jpg, :png] }
  validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }


end
