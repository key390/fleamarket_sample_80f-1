require 'rails_helper'

describe Item do
  describe '#create' do
    it "全て揃っている時保存できる" do
        item = build(:item)
        expect(item).to be_valid
    end
    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end
    it "is invalid without a explain" do
      item = build(:item, explain: nil)
      item.valid?
      expect(item.errors[:explain]).to include("can't be blank")
    end
    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
    it "is invalid without a category_id" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end
    it "is invalid without a status_id" do
      item = build(:item, status_id: nil)
      item.valid?
      expect(item.errors[:status_id]).to include("can't be blank")
    end
    it "is invalid without a delivery_cost_id" do
      item = build(:item, delivery_cost_id: nil)
      item.valid?
      expect(item.errors[:status_id]).to include("can't be blank")
    end
    it "is invalid without a area_id" do
      item = build(:item, area_id: nil)
      item.valid?
      expect(item.errors[:area_id]).to include("can't be blank")
    end
    it "is invalid without a limit_id" do
      item = build(:item, limit_id: nil)
      item.valid?
      expect(item.errors[:limit_id]).to include("can't be blank")
    end
    it "is invalid without a user_id" do
      item = build(:item, user_id: nil)
      item.valid?
      expect(item.errors[:user_id]).to include("can't be blank")
    end
    it "is valid without a brand" do
      item = build(:item, brand: nil)
      expect(item).to be_valid
    end
  end
end
