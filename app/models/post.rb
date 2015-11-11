class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :project_url, presence: true
  validates :category, presence: true 
end
