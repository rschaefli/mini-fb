require 'test_helper'

class FriendshipTest < ActiveSupport::TestCase
  
  test "Adding a new friendship" do
    Friendship.add_friendship(1, 20)
    
    f = Friendship.find_by! user_id: 1
    
    assert_equal(20, f.friend_id, "Friend id does not match")
  end
  
end
