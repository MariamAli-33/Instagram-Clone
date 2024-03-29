# frozen_string_literal: true

# Pages controller
class HomeController < ApplicationController
  before_action :collect_posts, only: %i[home]
  def home; end

  private

  def collect_posts
    @follows = current_user.following.where(accepted: true)
    @posts = Post.includes(:photos).includes(:user).where(user_id: @follows.pluck(:followed_id))
  end
end
