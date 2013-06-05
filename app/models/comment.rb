class Comment < ActiveRecord::Base
  validates_presence_of :content
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  belongs_to :app

  attr_accessible :app_id, :content, :email, :first_name, :last_name
end
