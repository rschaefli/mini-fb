require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "Saving a user" do
    user = User.new
    
    assert user.save, "Can save a user to the database"
  end
  
  test "Adding a friend to a user" do
    user = User.find(1)
    
    assert user.add_friend(20), "Can add a friendship to a user instance"
  end
  
  test "Adding friend to a user doesn't work if both ids are not tied to valid users" do
    assert true
  end
  
  test "Adding friendship doesn't create duplicate entries" do
    
  end
  
  
end
 