# == Schema Information
#
# Table name: microposts
#
#  id         :bigint           not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_microposts_on_user_id  (user_id)
#
FactoryBot.define do
  factory :micropost do
    content { "MyString" }
  end
end
