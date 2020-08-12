require 'rails_helper'

describe Address do
  describe '#create' do
    # 1. post,prefectures,city,numberが存在すれば登録できること
    it "is valid with a post, prefectures, city, number" do
      address = build(:address)
      expect(address).to be_valid
    end

    # 2. postが空では登録できないこと
    it "is invalid without a post" do
      address = build(:address, post: nil)
      address.valid?
      expect(address.errors[:post]).to include("can't be blank")
    end

    # 3. prefecturesが空では登録できないこと
    it "is invalid without a prefectures" do
      address = build(:address, prefectures: nil)
      address.valid?
      expect(address.errors[:prefectures]).to include("can't be blank")
    end

    # 4. cityが空では登録できないこと
    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    # 5. numberが空では登録できないこと
    it "is invalid without a number" do
      address = build(:address, number: nil)
      address.valid?
      expect(address.errors[:number]).to include("can't be blank")
    end

    # 6. buildingが空では登録できないこと
    it "is invalid without a building" do
      address = build(:address, building: nil)
      address.valid?
      expect(address.errors[:building]).to include("can't be blank")
    end
  end
end