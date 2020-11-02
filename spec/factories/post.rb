require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = build(:post)
  end

  describe 'バリデーション' do
    it 'contentが空だとNG' do
      @post.content = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'user_idが空だとNG' do
      @post.user_id = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'imageが空だとNG' do
      @post.image = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'priceが空だとNG' do
      @post.price = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'areaが空だとNG' do
      @post.area = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'limitが空だとNG' do
      @post.limit = ' '
      expect(@post.valid?).to eq(false)
    end
    it 'categoryが空だとNG' do
      @post.category = ' '
      expect(@post.valid?).to eq(false)
    end
  end
end

