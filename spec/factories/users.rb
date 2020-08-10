FactoryBot.define do

  factory :user do
    nickname              {"test"}
    firstname             {"tarou"}
    lastname              {"hanada"}
    first_hurigana        {"tarou"}
    last_hurigana         {"hanada"}
    birthday              {Date.new(2000, 11, 12)}
    email                 {"aaaaa@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end

end