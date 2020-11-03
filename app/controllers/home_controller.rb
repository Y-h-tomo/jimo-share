# frozen_string_literal: true

# Top Screen Control
class HomeController < ApplicationController
  before_action :forbid_login_user, { only: [:top] }

  def top
  end

  def guest
    @guest_user = User.find_or_create_by!(
      name: "ゲストユーザー",
      email: "guest@example.com",
      image_name: "user_sample.png",
    ) do |user|
      user.password_digest = SecureRandom.urlsafe_base64
    end
    session[:user_id] = @guest_user.id
    flash[:notice] = "ゲストユーザーとしてログインしました"
    redirect_to("/posts/index")
  end
end
