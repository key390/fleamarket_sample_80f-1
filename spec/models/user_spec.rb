require 'rails_helper'

describe User do
  describe '#create' do
    # 1. nickname,firstname,lastname,first_hurigana,last_hurigana,birthday,email、passwordとpassword_confirmationが存在すれば登録できること
    it "is valid with a nickname, firstname, lastname, first_hurigana, last_hurigana, birthday, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    # 2. nicknameが空では登録できないこと
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
      # expect(A).to include(B)
    end

    # 3. firstnameが空では登録できないこと
    it "is invalid without a firstname" do
      user = build(:user, firstname: nil)
      user.valid?
      expect(user.errors[:firstname]).to include("can't be blank")
    end

    # 4. lastnameが空では登録できないこと
    it "is invalid without a lastname" do
      user = build(:user, lastname: nil)
      user.valid?
      expect(user.errors[:lastname]).to include("can't be blank")
    end

    # 5. first_huriganaが空では登録できないこと
    it "is invalid without a first_hurigana" do
      user = build(:user, first_hurigana: nil)
      user.valid?
      expect(user.errors[:first_hurigana]).to include("can't be blank")
    end

    # 6. last_huriganaが空では登録できないこと
    it "is invalid without a last_hurigana" do
      user = build(:user, last_hurigana: nil)
      user.valid?
      expect(user.errors[:last_hurigana]).to include("can't be blank")
    end

    # 7. birthdayが空では登録できないこと
    it "is invalid without a birthday" do
      user = build(:user, birthday: nil)
      user.valid?
      expect(user.errors[:birthday]).to include("can't be blank")
    end

    # 8. emailが空では登録できないこと
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    # 9. passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    # 10. passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    # 11. 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # 12. passwordが7文字以上であれば登録できること
    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      expect(user).to be_valid
      # expect(user).to be_invalid
    end

    # 13. passwordが6文字以下であれば登録できないこと
    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end
  end
end