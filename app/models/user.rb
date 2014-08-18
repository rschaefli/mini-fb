class User < ActiveRecord::Base

  has_many :users,
    :foreign_key => 'user_id',  :class_name => 'Friendship'
  has_many :users,
    :foreign_key => 'friend_id', :class_name => 'Friendship'

  
  # def linked
    # User.find_by_sql "
    # select *
    # from users
    # where id in (
      # select friend_id
      # from relationships
      # where user_id = #{id})"
  # end
  
  def add_friend(friend_id)
    
    puts :user_id
    
    Friendship.add_friendship(:user_id, friend_id)
  end
end
