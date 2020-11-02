class Comment < ApplicationRecord
  validates  :user_id, { presence: true }
  validates  :post_id, { presence: true }
  validates  :comment, { presence: true }
  belongs_to :post
  belongs_to :user

  def post
    Post.find_by(id: post_id)
  end

  def user
    User.find_by(id: user_id)
  end
end
