require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "create a post" do
    p = Post.create(:content => 'trivial', :title => "foo")
    assert_equal 1, Post.count
    assert_equal 'trivial', p.content
  end
  
  test "content greater than 255 long should be invalid" do
  	p = Post.create!(:content => 'trivial', :title => "a" * 20)
  end

end
