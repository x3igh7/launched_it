class Comment < ActiveRecord::Base
  validates_presence_of :content

  attr_accessible :app_id, :content, :email, :first_name, :last_name
end
