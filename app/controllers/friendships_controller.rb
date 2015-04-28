class FriendshipsController < ApplicationController

  before_action :set_user

  def follow
    @follow = Friendship.new
    @follow.from_user_id = current_user.id
    @follow.to_user_id = @user.id
    @follow.save
    redirect_to users_path
  end

  def follow_destroy
    @follow = Friendship.find_by(:to_user_id => params[:id])
    @follow.delete
    redirect_to users_path
  end

  def follow_list
  end

  def follower_list
  end

  private

  def set_user
    @user = User.find(params[:format])
  end

end
