class Friendship < ActiveRecord::Base
  belongs_to :user,
    :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :user,
    :class_name => 'User', :foreign_key => 'friend_id'
    
  def self.add_friendship(user_id, friend_id)
    friendship = Friendship.new
    friendship.user_id = user_id
    friendship.friend_id = friend_id
    friendship.save
  end
end
