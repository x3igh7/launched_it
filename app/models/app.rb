class App < ActiveRecord::Base
  attr_accessible :code_url, :description, :email, :name, :url
end
