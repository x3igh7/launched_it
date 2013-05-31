class Comment < ActiveRecord::Base
  attr_accessible :app_id, :content, :email, :first_name, :last_name
end
