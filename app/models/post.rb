class Post < ActiveRecord::Base
  validate :content, length: {maximum: 255}
  attr_accessible :content, :title
end
