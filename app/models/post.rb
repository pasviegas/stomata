class Post < ActiveRecord::Base
  validate :title, lenght: {maximum: 30}
  attr_accessible :content, :title
end
