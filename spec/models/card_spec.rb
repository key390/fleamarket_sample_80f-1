require 'rails_helper'

RSpec.describe Card, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe '#pay' do
    # Cardモデルにてpayアクション customer_id未入力テスト
    it "is invalid without a customer_id" do
      card = build(:card, customer_id: nil)
      card.valid?
      expect(card.errors[:customer_id]).to include("can't be blank")
    end

    # Cardモデルにてpayアクション card_id未入力テスト
    it "is invalid without a card_id" do
      card = build(:card, card_id: nil)
      card.valid?
      expect(card.errors[:card_id]).to include("can't be blank")
    end

    # Cardモデルにてpayアクション user_id未入力テスト
    it "is invalid without a user_id" do
      card = build(:card, user_id: nil)
      card.valid?
      expect(card.errors[:user_id]).to include("can't be blank")
    end

  end
end
