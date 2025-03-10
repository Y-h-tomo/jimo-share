# frozen_string_literal: true

# Post Management
class Post < ApplicationRecord
  validates :content, { presence: true, length: { maximum: 200 } }
  validates :user_id, { presence: true }
  validates :image, { presence: true }
  validates :price, { presence: true, numericality: true }
  validates :area, { presence: true }
  validates :limit, { presence: true }
  validates :category, { presence: true }
  belongs_to :user
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }

  # mount_uploader :image, ImageUploader

  def user
    User.find_by(id: user_id)
  end

  def comments
    Comment.where(post_id: id)
  end
end

# def generate_image
#   self.image = loop do
#     random_token = SecureRandom.urlsafe_base64(nil, false) + ".jpg"
#     break random_token unless self.class.exists?(image: random_token)
#   end
# end
