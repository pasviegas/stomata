class Post < ActiveRecord::Base
  validate :title, length: {maximum: 30}
  attr_accessible :content, :title
end
