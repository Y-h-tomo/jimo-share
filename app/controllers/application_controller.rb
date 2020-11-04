# frozen_string_literal: true

# global control
class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :set_guest_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def set_guest_user
    @guest_user = User.find_by(email: "guest@example.com")
  end

  def authenticate_user
    return unless @current_user.nil?

    flash[:notice] = "ログインが必要です"
    redirect_to("/login")
  end

  def forbid_login_user
    return unless @current_user

    flash[:notice] = "すでにログインしています"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    return unless @current_user.id != params[:id].to_i

    flash[:notice] = "権限がありません"
    redirect_to("/posts/index")
  end
end
