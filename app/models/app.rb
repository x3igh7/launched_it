class App < ActiveRecord::Base
  attr_accessible :code_url, :description, :email, :name, :url, :props

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :code_url
  validates_presence_of :url
  validates_presence_of :props

  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_format_of :url, with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
  validates_format_of :code_url, with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix

  has_many :comments

  def add_props
    update_attributes(props:props+1)
  end

end
