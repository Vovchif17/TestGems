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
class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
end
